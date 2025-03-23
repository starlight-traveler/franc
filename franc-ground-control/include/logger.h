#include "quill/Backend.h"
#include "quill/Frontend.h"
#include "quill/LogMacros.h"
#include "quill/Logger.h"
#include "quill/sinks/ConsoleSink.h"

#include "quill/bundled/fmt/ostream.h"
#include "quill/std/Array.h"
#include "quill/std/Chrono.h"

#include <iostream>
#include <string>
#include <utility>

quill::Logger *init_logger();