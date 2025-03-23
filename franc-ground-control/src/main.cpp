#include "application.h"
#include <thread>
#include <iostream>

int main(int argc, char **argv)
{
    Application app;
    if (!app.Init())
    {
        return -1;
    }

    // Start the RTL process in a separate thread.
    RTLProcess rtlProcess(app.logger, &app.appLog);
    std::thread processThread(&RTLProcess::get_output_buffer, &rtlProcess);

    // Run the main application loop.
    app.Run();

    // Ensure the process thread is joined before exiting.
    if (processThread.joinable())
    {
        processThread.join();
    }

    return 0;
}
