# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mungtung/dev/ShbVkEngineMk1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mungtung/dev/ShbVkEngineMk1/build

# Include any dependencies generated for this target.
include CMakeFiles/ShbVkEngine.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ShbVkEngine.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ShbVkEngine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ShbVkEngine.dir/flags.make

CMakeFiles/ShbVkEngine.dir/src/main.cpp.o: CMakeFiles/ShbVkEngine.dir/flags.make
CMakeFiles/ShbVkEngine.dir/src/main.cpp.o: /home/mungtung/dev/ShbVkEngineMk1/src/main.cpp
CMakeFiles/ShbVkEngine.dir/src/main.cpp.o: CMakeFiles/ShbVkEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mungtung/dev/ShbVkEngineMk1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ShbVkEngine.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ShbVkEngine.dir/src/main.cpp.o -MF CMakeFiles/ShbVkEngine.dir/src/main.cpp.o.d -o CMakeFiles/ShbVkEngine.dir/src/main.cpp.o -c /home/mungtung/dev/ShbVkEngineMk1/src/main.cpp

CMakeFiles/ShbVkEngine.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShbVkEngine.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mungtung/dev/ShbVkEngineMk1/src/main.cpp > CMakeFiles/ShbVkEngine.dir/src/main.cpp.i

CMakeFiles/ShbVkEngine.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShbVkEngine.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mungtung/dev/ShbVkEngineMk1/src/main.cpp -o CMakeFiles/ShbVkEngine.dir/src/main.cpp.s

CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.o: CMakeFiles/ShbVkEngine.dir/flags.make
CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.o: /home/mungtung/dev/ShbVkEngineMk1/src/sApp.cpp
CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.o: CMakeFiles/ShbVkEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mungtung/dev/ShbVkEngineMk1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.o -MF CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.o.d -o CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.o -c /home/mungtung/dev/ShbVkEngineMk1/src/sApp.cpp

CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mungtung/dev/ShbVkEngineMk1/src/sApp.cpp > CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.i

CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mungtung/dev/ShbVkEngineMk1/src/sApp.cpp -o CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.s

CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.o: CMakeFiles/ShbVkEngine.dir/flags.make
CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.o: /home/mungtung/dev/ShbVkEngineMk1/src/sDebug.cpp
CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.o: CMakeFiles/ShbVkEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mungtung/dev/ShbVkEngineMk1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.o -MF CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.o.d -o CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.o -c /home/mungtung/dev/ShbVkEngineMk1/src/sDebug.cpp

CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mungtung/dev/ShbVkEngineMk1/src/sDebug.cpp > CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.i

CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mungtung/dev/ShbVkEngineMk1/src/sDebug.cpp -o CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.s

CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.o: CMakeFiles/ShbVkEngine.dir/flags.make
CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.o: /home/mungtung/dev/ShbVkEngineMk1/src/sDevice.cpp
CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.o: CMakeFiles/ShbVkEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mungtung/dev/ShbVkEngineMk1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.o -MF CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.o.d -o CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.o -c /home/mungtung/dev/ShbVkEngineMk1/src/sDevice.cpp

CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mungtung/dev/ShbVkEngineMk1/src/sDevice.cpp > CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.i

CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mungtung/dev/ShbVkEngineMk1/src/sDevice.cpp -o CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.s

# Object files for target ShbVkEngine
ShbVkEngine_OBJECTS = \
"CMakeFiles/ShbVkEngine.dir/src/main.cpp.o" \
"CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.o" \
"CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.o" \
"CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.o"

# External object files for target ShbVkEngine
ShbVkEngine_EXTERNAL_OBJECTS =

ShbVkEngine: CMakeFiles/ShbVkEngine.dir/src/main.cpp.o
ShbVkEngine: CMakeFiles/ShbVkEngine.dir/src/sApp.cpp.o
ShbVkEngine: CMakeFiles/ShbVkEngine.dir/src/sDebug.cpp.o
ShbVkEngine: CMakeFiles/ShbVkEngine.dir/src/sDevice.cpp.o
ShbVkEngine: CMakeFiles/ShbVkEngine.dir/build.make
ShbVkEngine: /usr/lib/libglfw.so.3.3
ShbVkEngine: /lib/libvulkan.so
ShbVkEngine: CMakeFiles/ShbVkEngine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mungtung/dev/ShbVkEngineMk1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ShbVkEngine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ShbVkEngine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ShbVkEngine.dir/build: ShbVkEngine
.PHONY : CMakeFiles/ShbVkEngine.dir/build

CMakeFiles/ShbVkEngine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ShbVkEngine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ShbVkEngine.dir/clean

CMakeFiles/ShbVkEngine.dir/depend:
	cd /home/mungtung/dev/ShbVkEngineMk1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mungtung/dev/ShbVkEngineMk1 /home/mungtung/dev/ShbVkEngineMk1 /home/mungtung/dev/ShbVkEngineMk1/build /home/mungtung/dev/ShbVkEngineMk1/build /home/mungtung/dev/ShbVkEngineMk1/build/CMakeFiles/ShbVkEngine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ShbVkEngine.dir/depend

