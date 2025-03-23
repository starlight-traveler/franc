#ifndef APP_LOG_H
#define APP_LOG_H

#include <vector>
#include <string>
#include <mutex>

class AppLog
{
public:
    std::vector<std::string> items;
    std::mutex log_mutex;

    // Adds a formatted log message.
    void AddLog(const char *fmt, ...);

    // Draws the log using ImGui.
    void Draw(const char *title, bool *p_open = nullptr);
};

#endif // APP_LOG_H
