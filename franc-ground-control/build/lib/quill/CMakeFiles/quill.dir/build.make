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

# Utility rule file for quill.

# Include any custom commands dependencies for this target.
include lib/quill/CMakeFiles/quill.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/quill/CMakeFiles/quill.dir/progress.make

lib/quill/CMakeFiles/quill.dir/codegen:
.PHONY : lib/quill/CMakeFiles/quill.dir/codegen

quill: lib/quill/CMakeFiles/quill.dir/build.make
.PHONY : quill

# Rule to build all files generated by this target.
lib/quill/CMakeFiles/quill.dir/build: quill
.PHONY : lib/quill/CMakeFiles/quill.dir/build

lib/quill/CMakeFiles/quill.dir/clean:
	cd /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build/lib/quill && $(CMAKE_COMMAND) -P CMakeFiles/quill.dir/cmake_clean.cmake
.PHONY : lib/quill/CMakeFiles/quill.dir/clean

lib/quill/CMakeFiles/quill.dir/depend:
	cd /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/lib/quill /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build/lib/quill /Users/rpaillet/local/rocketry/payload/franc/franc-ground-control/build/lib/quill/CMakeFiles/quill.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/quill/CMakeFiles/quill.dir/depend

