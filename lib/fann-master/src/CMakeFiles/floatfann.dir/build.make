# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.5.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.5.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master

# Include any dependencies generated for this target.
include src/CMakeFiles/floatfann.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/floatfann.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/floatfann.dir/flags.make

src/CMakeFiles/floatfann.dir/floatfann.c.o: src/CMakeFiles/floatfann.dir/flags.make
src/CMakeFiles/floatfann.dir/floatfann.c.o: src/floatfann.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/floatfann.dir/floatfann.c.o"
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/floatfann.dir/floatfann.c.o   -c /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src/floatfann.c

src/CMakeFiles/floatfann.dir/floatfann.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/floatfann.dir/floatfann.c.i"
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src/floatfann.c > CMakeFiles/floatfann.dir/floatfann.c.i

src/CMakeFiles/floatfann.dir/floatfann.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/floatfann.dir/floatfann.c.s"
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src/floatfann.c -o CMakeFiles/floatfann.dir/floatfann.c.s

src/CMakeFiles/floatfann.dir/floatfann.c.o.requires:

.PHONY : src/CMakeFiles/floatfann.dir/floatfann.c.o.requires

src/CMakeFiles/floatfann.dir/floatfann.c.o.provides: src/CMakeFiles/floatfann.dir/floatfann.c.o.requires
	$(MAKE) -f src/CMakeFiles/floatfann.dir/build.make src/CMakeFiles/floatfann.dir/floatfann.c.o.provides.build
.PHONY : src/CMakeFiles/floatfann.dir/floatfann.c.o.provides

src/CMakeFiles/floatfann.dir/floatfann.c.o.provides.build: src/CMakeFiles/floatfann.dir/floatfann.c.o


# Object files for target floatfann
floatfann_OBJECTS = \
"CMakeFiles/floatfann.dir/floatfann.c.o"

# External object files for target floatfann
floatfann_EXTERNAL_OBJECTS =

src/libfloatfann.2.2.0.dylib: src/CMakeFiles/floatfann.dir/floatfann.c.o
src/libfloatfann.2.2.0.dylib: src/CMakeFiles/floatfann.dir/build.make
src/libfloatfann.2.2.0.dylib: src/CMakeFiles/floatfann.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libfloatfann.dylib"
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/floatfann.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src && $(CMAKE_COMMAND) -E cmake_symlink_library libfloatfann.2.2.0.dylib libfloatfann.2.dylib libfloatfann.dylib

src/libfloatfann.2.dylib: src/libfloatfann.2.2.0.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate src/libfloatfann.2.dylib

src/libfloatfann.dylib: src/libfloatfann.2.2.0.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate src/libfloatfann.dylib

# Rule to build all files generated by this target.
src/CMakeFiles/floatfann.dir/build: src/libfloatfann.dylib

.PHONY : src/CMakeFiles/floatfann.dir/build

src/CMakeFiles/floatfann.dir/requires: src/CMakeFiles/floatfann.dir/floatfann.c.o.requires

.PHONY : src/CMakeFiles/floatfann.dir/requires

src/CMakeFiles/floatfann.dir/clean:
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src && $(CMAKE_COMMAND) -P CMakeFiles/floatfann.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/floatfann.dir/clean

src/CMakeFiles/floatfann.dir/depend:
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src/CMakeFiles/floatfann.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/floatfann.dir/depend
