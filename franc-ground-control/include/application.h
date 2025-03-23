#ifndef APPLICATION_LOG_H
#define APPLICATION_LOG_H

#include "app_log.h"
#include <SDL.h>
#include <GL/glew.h>
#include "logger.h"
#include <subprocess.hpp>

#include <string>
#include <sys/types.h> // For pid_t

// Application encapsulates SDL, OpenGL, and ImGui initialization and the main loop.
class Application
{
public:
    SDL_Window *window;
    SDL_GLContext gl_context;
    bool done;
    float someFloatValue;
    int someIntValue;
    bool show_demo_window;
    AppLog appLog;
    quill::Logger *logger;

    Application();
    ~Application();
    bool Init();
    void Run();
};

class RTLProcess
{
public:
    RTLProcess(quill::Logger *logger_v, AppLog *appLog_v);
    ~RTLProcess();

    void get_output_buffer();

private:
    quill::Logger *logger;
    AppLog *appLog;
    pid_t child_pid;
    int master_fd; // Master side of the pseudo terminal.
};
#endif // APPLICATION_LOG_H
