#include "app_log.h"
#include "imgui.h"
#include <cstdarg>
#include <cstdio>
#include <mutex>
#include <vector>
#include <string>

void AppLog::AddLog(const char *fmt, ...)
{
    char buf[1024];
    va_list args;
    va_start(args, fmt);
    vsnprintf(buf, sizeof(buf), fmt, args);
    buf[sizeof(buf) - 1] = '\0'; // Ensure null termination
    va_end(args);

    std::lock_guard<std::mutex> lock(log_mutex);
    items.push_back(std::string(buf));
}

void AppLog::Draw(const char *title, bool *p_open)
{
    ImGui::Begin(title, p_open);
    if (ImGui::Button("Clear"))
    {
        std::lock_guard<std::mutex> lock(log_mutex);
        items.clear();
    }
    ImGui::Separator();
    ImGui::BeginChild("ScrollingRegion", ImVec2(0, 0), false);
    {
        std::lock_guard<std::mutex> lock(log_mutex);
        for (const auto &item : items)
        {
            ImGui::TextUnformatted(item.c_str());
        }
    }
    ImGui::EndChild();
    ImGui::End();
}
