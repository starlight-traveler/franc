#include "logger.h"

quill::Logger *init_logger()
{
    quill::BackendOptions backend_options;
    quill::Backend::start(backend_options);

    // Create a configuration for the console sink.
    quill::ConsoleSinkConfig console_sink_config;
    // console_sink_config.colour_mode = quill::ConsoleSinkConfig::ColourMode::Automatic;

    // Create or get the console sink using the configuration.
    auto console_sink = quill::Frontend::create_or_get_sink<quill::ConsoleSink>("sink_id_1", console_sink_config);

    quill::Logger *logger = quill::Frontend::create_or_get_logger("root", std::move(console_sink));

    // Set the log level to print everything.
    logger->set_log_level(quill::LogLevel::TraceL3);

    return logger;
}
