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
include src/CMakeFiles/doublefann.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/doublefann.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/doublefann.dir/flags.make

src/CMakeFiles/doublefann.dir/doublefann.c.o: src/CMakeFiles/doublefann.dir/flags.make
src/CMakeFiles/doublefann.dir/doublefann.c.o: src/doublefann.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/doublefann.dir/doublefann.c.o"
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/doublefann.dir/doublefann.c.o   -c /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src/doublefann.c

src/CMakeFiles/doublefann.dir/doublefann.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/doublefann.dir/doublefann.c.i"
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src/doublefann.c > CMakeFiles/doublefann.dir/doublefann.c.i

src/CMakeFiles/doublefann.dir/doublefann.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/doublefann.dir/doublefann.c.s"
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src/doublefann.c -o CMakeFiles/doublefann.dir/doublefann.c.s

src/CMakeFiles/doublefann.dir/doublefann.c.o.requires:

.PHONY : src/CMakeFiles/doublefann.dir/doublefann.c.o.requires

src/CMakeFiles/doublefann.dir/doublefann.c.o.provides: src/CMakeFiles/doublefann.dir/doublefann.c.o.requires
	$(MAKE) -f src/CMakeFiles/doublefann.dir/build.make src/CMakeFiles/doublefann.dir/doublefann.c.o.provides.build
.PHONY : src/CMakeFiles/doublefann.dir/doublefann.c.o.provides

src/CMakeFiles/doublefann.dir/doublefann.c.o.provides.build: src/CMakeFiles/doublefann.dir/doublefann.c.o


# Object files for target doublefann
doublefann_OBJECTS = \
"CMakeFiles/doublefann.dir/doublefann.c.o"

# External object files for target doublefann
doublefann_EXTERNAL_OBJECTS =

src/libdoublefann.2.2.0.dylib: src/CMakeFiles/doublefann.dir/doublefann.c.o
src/libdoublefann.2.2.0.dylib: src/CMakeFiles/doublefann.dir/build.make
src/libdoublefann.2.2.0.dylib: src/CMakeFiles/doublefann.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libdoublefann.dylib"
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/doublefann.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src && $(CMAKE_COMMAND) -E cmake_symlink_library libdoublefann.2.2.0.dylib libdoublefann.2.dylib libdoublefann.dylib

src/libdoublefann.2.dylib: src/libdoublefann.2.2.0.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate src/libdoublefann.2.dylib

src/libdoublefann.dylib: src/libdoublefann.2.2.0.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate src/libdoublefann.dylib

# Rule to build all files generated by this target.
src/CMakeFiles/doublefann.dir/build: src/libdoublefann.dylib

.PHONY : src/CMakeFiles/doublefann.dir/build

src/CMakeFiles/doublefann.dir/requires: src/CMakeFiles/doublefann.dir/doublefann.c.o.requires

.PHONY : src/CMakeFiles/doublefann.dir/requires

src/CMakeFiles/doublefann.dir/clean:
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src && $(CMAKE_COMMAND) -P CMakeFiles/doublefann.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/doublefann.dir/clean

src/CMakeFiles/doublefann.dir/depend:
	cd /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src /Users/davidanthonydasilva/Desktop/WebComp/lib/fann-master/src/CMakeFiles/doublefann.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/doublefann.dir/depend
