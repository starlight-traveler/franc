# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build

# Include any dependencies generated for this target.
include CMakeFiles/FRANC-GROUND.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/FRANC-GROUND.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/FRANC-GROUND.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FRANC-GROUND.dir/flags.make

CMakeFiles/FRANC-GROUND.dir/codegen:
.PHONY : CMakeFiles/FRANC-GROUND.dir/codegen

CMakeFiles/FRANC-GROUND.dir/src/main.cpp.o: CMakeFiles/FRANC-GROUND.dir/flags.make
CMakeFiles/FRANC-GROUND.dir/src/main.cpp.o: /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/main.cpp
CMakeFiles/FRANC-GROUND.dir/src/main.cpp.o: CMakeFiles/FRANC-GROUND.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FRANC-GROUND.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FRANC-GROUND.dir/src/main.cpp.o -MF CMakeFiles/FRANC-GROUND.dir/src/main.cpp.o.d -o CMakeFiles/FRANC-GROUND.dir/src/main.cpp.o -c /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/main.cpp

CMakeFiles/FRANC-GROUND.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FRANC-GROUND.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/main.cpp > CMakeFiles/FRANC-GROUND.dir/src/main.cpp.i

CMakeFiles/FRANC-GROUND.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FRANC-GROUND.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/main.cpp -o CMakeFiles/FRANC-GROUND.dir/src/main.cpp.s

CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.o: CMakeFiles/FRANC-GROUND.dir/flags.make
CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.o: /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/logger.cpp
CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.o: CMakeFiles/FRANC-GROUND.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.o -MF CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.o.d -o CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.o -c /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/logger.cpp

CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/logger.cpp > CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.i

CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/logger.cpp -o CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.s

CMakeFiles/FRANC-GROUND.dir/src/application.cpp.o: CMakeFiles/FRANC-GROUND.dir/flags.make
CMakeFiles/FRANC-GROUND.dir/src/application.cpp.o: /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/application.cpp
CMakeFiles/FRANC-GROUND.dir/src/application.cpp.o: CMakeFiles/FRANC-GROUND.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/FRANC-GROUND.dir/src/application.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FRANC-GROUND.dir/src/application.cpp.o -MF CMakeFiles/FRANC-GROUND.dir/src/application.cpp.o.d -o CMakeFiles/FRANC-GROUND.dir/src/application.cpp.o -c /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/application.cpp

CMakeFiles/FRANC-GROUND.dir/src/application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FRANC-GROUND.dir/src/application.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/application.cpp > CMakeFiles/FRANC-GROUND.dir/src/application.cpp.i

CMakeFiles/FRANC-GROUND.dir/src/application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FRANC-GROUND.dir/src/application.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/application.cpp -o CMakeFiles/FRANC-GROUND.dir/src/application.cpp.s

CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.o: CMakeFiles/FRANC-GROUND.dir/flags.make
CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.o: /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/app_log.cpp
CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.o: CMakeFiles/FRANC-GROUND.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.o -MF CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.o.d -o CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.o -c /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/app_log.cpp

CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/app_log.cpp > CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.i

CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/src/app_log.cpp -o CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.s

# Object files for target FRANC-GROUND
FRANC__GROUND_OBJECTS = \
"CMakeFiles/FRANC-GROUND.dir/src/main.cpp.o" \
"CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.o" \
"CMakeFiles/FRANC-GROUND.dir/src/application.cpp.o" \
"CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.o"

# External object files for target FRANC-GROUND
FRANC__GROUND_EXTERNAL_OBJECTS =

FRANC-GROUND: CMakeFiles/FRANC-GROUND.dir/src/main.cpp.o
FRANC-GROUND: CMakeFiles/FRANC-GROUND.dir/src/logger.cpp.o
FRANC-GROUND: CMakeFiles/FRANC-GROUND.dir/src/application.cpp.o
FRANC-GROUND: CMakeFiles/FRANC-GROUND.dir/src/app_log.cpp.o
FRANC-GROUND: CMakeFiles/FRANC-GROUND.dir/build.make
FRANC-GROUND: lib/imgui/libimgui.a
FRANC-GROUND: lib/subprocess/subprocess/libsubprocess.a
FRANC-GROUND: /opt/homebrew/Cellar/sdl2/2.32.2/lib/libSDL2.dylib
FRANC-GROUND: CMakeFiles/FRANC-GROUND.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable FRANC-GROUND"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FRANC-GROUND.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FRANC-GROUND.dir/build: FRANC-GROUND
.PHONY : CMakeFiles/FRANC-GROUND.dir/build

CMakeFiles/FRANC-GROUND.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FRANC-GROUND.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FRANC-GROUND.dir/clean

CMakeFiles/FRANC-GROUND.dir/depend:
	cd /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build/CMakeFiles/FRANC-GROUND.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/FRANC-GROUND.dir/depend

