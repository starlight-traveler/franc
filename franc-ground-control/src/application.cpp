#include "application.h"
#include "imgui.h"
#include "backends/imgui_impl_sdl2.h"
#include "backends/imgui_impl_opengl3.h"

#include <iostream>
#include <thread>
#include "logger.h"

//=========================================================================
// Application methods (unchanged)
//=========================================================================

Application::Application()
    : window(nullptr),
      gl_context(nullptr),
      done(false),
      someFloatValue(5.0f),
      someIntValue(50),
      show_demo_window(false)
{
    logger = init_logger();
    if (logger)
    {
        LOG_INFO(logger, "Application constructor - logger created.");
    }
}

Application::~Application()
{
    if (!done)
    {
        LOG_INFO(logger, "Application destructor cleaning up...");
    }
}

bool Application::Init()
{
    LOG_INFO(logger, "FRANC Ground Station starting...");

    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER) != 0)
    {
        LOG_ERROR(logger, "Error: %s", SDL_GetError());
        return false;
    }

    // Request OpenGL 3.2 core profile.
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_FLAGS, 0);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 2);

    SDL_WindowFlags window_flags = (SDL_WindowFlags)(SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE | SDL_WINDOW_ALLOW_HIGHDPI);
    window = SDL_CreateWindow("FRANC Ground Station", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 1280, 720, window_flags);
    if (!window)
    {
        LOG_ERROR(logger, "Failed to create SDL Window!");
        SDL_Quit();
        return false;
    }

    gl_context = SDL_GL_CreateContext(window);
    if (!gl_context)
    {
        LOG_ERROR(logger, "Failed to create OpenGL context!");
        SDL_DestroyWindow(window);
        SDL_Quit();
        return false;
    }

    SDL_GL_MakeCurrent(window, gl_context);
    SDL_GL_SetSwapInterval(1); // VSync

    GLenum glewError = glewInit();
    if (glewError != GLEW_OK)
    {
        LOG_ERROR(logger, "Error initializing GLEW.");
        SDL_GL_DeleteContext(gl_context);
        SDL_DestroyWindow(window);
        SDL_Quit();
        return false;
    }

    // Setup ImGui.
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO &io = ImGui::GetIO();
    (void)io;
    ImGui::StyleColorsDark();
    ImGui_ImplSDL2_InitForOpenGL(window, gl_context);
    ImGui_ImplOpenGL3_Init("#version 150");

    // Write startup messages to our in-app log.
    appLog.AddLog("Logging started...");
    appLog.AddLog("FRANC Ground Station is running.");
    appLog.AddLog("Press ESC or close window to exit.");

    return true;
}

void Application::Run()
{
    while (!done)
    {
        SDL_Event event;
        while (SDL_PollEvent(&event))
        {
            ImGui_ImplSDL2_ProcessEvent(&event);
            if (event.type == SDL_QUIT)
                done = true;
            if (event.type == SDL_KEYDOWN && event.key.keysym.sym == SDLK_ESCAPE)
                done = true;
        }

        // Start new ImGui frame.
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplSDL2_NewFrame();
        ImGui::NewFrame();

        // Draw the in-app log.
        appLog.Draw("Life Process Output (Pseudo-Terminal)");

        // Draw a panel with some controls.
        ImGui::Begin("Data Values");
        ImGui::Text("Here are some variables:");
        ImGui::SliderFloat("Some float", &someFloatValue, 0.0f, 10.0f);
        ImGui::SliderInt("Some int", &someIntValue, 0, 100);
        if (ImGui::Button("Log Something"))
        {
            appLog.AddLog("Button clicked! Float=%.2f, Int=%d", someFloatValue, someIntValue);
            LOG_INFO(logger, "Button clicked! Float=%.2f, Int=%d", someFloatValue, someIntValue);
        }
        ImGui::Checkbox("Show ImGui Demo Window", &show_demo_window);
        ImGui::End();

        if (show_demo_window)
        {
            ImGui::ShowDemoWindow(&show_demo_window);
        }

        // Rendering.
        ImGui::Render();
        ImGuiIO &io = ImGui::GetIO();
        glViewport(0, 0, static_cast<int>(io.DisplaySize.x), static_cast<int>(io.DisplaySize.y));
        glClearColor(0.45f, 0.55f, 0.60f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
        SDL_GL_SwapWindow(window);
    }

    LOG_INFO(logger, "Exiting application...");

    // Cleanup.
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplSDL2_Shutdown();
    ImGui::DestroyContext();
    SDL_GL_DeleteContext(gl_context);
    SDL_DestroyWindow(window);
    SDL_Quit();
}

//=========================================================================
// Updated RTLProcess methods using a FIFO for live output (macOS)
//=========================================================================

#include <util.h> // For forkpty on macOS
#include <termios.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <cstdlib>
#include <cstdio>
#include <cstring>
#include <cerrno>
#include <unistd.h>

RTLProcess::RTLProcess(quill::Logger *logger_v, AppLog *appLog_v)
    : logger(logger_v),
      appLog(appLog_v),
      child_pid(-1),
      master_fd(-1)
{
    // Create a pseudo terminal and fork.
    child_pid = forkpty(&master_fd, nullptr, nullptr, nullptr);
    if (child_pid < 0)
    {
        LOG_ERROR(logger, "forkpty failed: %s", strerror(errno));
        if (appLog)
        {
            appLog->AddLog("forkpty failed: %s", strerror(errno));
        }
        return;
    }
    else if (child_pid == 0)
    {
        // ======================
        // CHILD PROCESS
        // ======================

        // Optionally ignore signals before executing the command.
        signal(SIGINT, SIG_IGN);
        signal(SIGTERM, SIG_IGN);
        signal(SIGHUP, SIG_IGN);

        // Execute your command using zsh.
        execlp("zsh", "zsh", "-c",
               "rtl_fm -f 144.575M -s 22050 -g 20.7 | direwolf -r 22050 -D 1",
               (char *)nullptr);

        // If execlp fails, print error and exit.
        perror("execlp");
        exit(EXIT_FAILURE);
    }
    else
    {
        // ======================
        // PARENT PROCESS
        // ======================
        LOG_INFO(logger, "RTLProcess started successfully with PID %d.", child_pid);
        if (appLog)
        {
            appLog->AddLog("RTLProcess started successfully with PID %d.", child_pid);
        }
    }
}

RTLProcess::~RTLProcess()
{
    LOG_INFO(logger, "Exiting RTLProcess...");
    if (appLog)
    {
        appLog->AddLog("Exiting RTLProcess...");
    }
    // Optionally, you can wait for the child or simply close the master_fd.
    if (master_fd >= 0)
    {
        close(master_fd);
    }
    // Note: We're not killing the child process here.
}

void RTLProcess::get_output_buffer()
{
    if (master_fd < 0)
    {
        LOG_ERROR(logger, "Invalid master_fd");
        if (appLog)
        {
            appLog->AddLog("Invalid master_fd");
        }
        return;
    }

    char buffer[4096];
    while (true)
    {
        ssize_t bytes_read = read(master_fd, buffer, sizeof(buffer) - 1);
        if (bytes_read <= 0)
        {
            if (bytes_read < 0)
            {
                LOG_ERROR(logger, "Error reading from pty: %s", strerror(errno));
                if (appLog)
                {
                    appLog->AddLog("Error reading from pty: %s", strerror(errno));
                }
            }
            break;
        }
        buffer[bytes_read] = '\0';
        LOG_INFO(logger, "%s", buffer);
        if (appLog)
        {
            appLog->AddLog("Process Output: %s", buffer);
        }
    }
}