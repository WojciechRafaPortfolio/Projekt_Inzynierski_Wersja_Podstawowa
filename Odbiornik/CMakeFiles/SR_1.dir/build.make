# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /snap/cmake/957/bin/cmake

# The command to remove a file.
RM = /snap/cmake/957/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi

# Include any dependencies generated for this target.
include CMakeFiles/SR_1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SR_1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SR_1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SR_1.dir/flags.make

CMakeFiles/SR_1.dir/main.cpp.o: CMakeFiles/SR_1.dir/flags.make
CMakeFiles/SR_1.dir/main.cpp.o: main.cpp
CMakeFiles/SR_1.dir/main.cpp.o: CMakeFiles/SR_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SR_1.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SR_1.dir/main.cpp.o -MF CMakeFiles/SR_1.dir/main.cpp.o.d -o CMakeFiles/SR_1.dir/main.cpp.o -c /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/main.cpp

CMakeFiles/SR_1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SR_1.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/main.cpp > CMakeFiles/SR_1.dir/main.cpp.i

CMakeFiles/SR_1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SR_1.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/main.cpp -o CMakeFiles/SR_1.dir/main.cpp.s

CMakeFiles/SR_1.dir/Connect_manager.cpp.o: CMakeFiles/SR_1.dir/flags.make
CMakeFiles/SR_1.dir/Connect_manager.cpp.o: Connect_manager.cpp
CMakeFiles/SR_1.dir/Connect_manager.cpp.o: CMakeFiles/SR_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SR_1.dir/Connect_manager.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SR_1.dir/Connect_manager.cpp.o -MF CMakeFiles/SR_1.dir/Connect_manager.cpp.o.d -o CMakeFiles/SR_1.dir/Connect_manager.cpp.o -c /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/Connect_manager.cpp

CMakeFiles/SR_1.dir/Connect_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SR_1.dir/Connect_manager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/Connect_manager.cpp > CMakeFiles/SR_1.dir/Connect_manager.cpp.i

CMakeFiles/SR_1.dir/Connect_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SR_1.dir/Connect_manager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/Connect_manager.cpp -o CMakeFiles/SR_1.dir/Connect_manager.cpp.s

CMakeFiles/SR_1.dir/CM_Server.cpp.o: CMakeFiles/SR_1.dir/flags.make
CMakeFiles/SR_1.dir/CM_Server.cpp.o: CM_Server.cpp
CMakeFiles/SR_1.dir/CM_Server.cpp.o: CMakeFiles/SR_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SR_1.dir/CM_Server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SR_1.dir/CM_Server.cpp.o -MF CMakeFiles/SR_1.dir/CM_Server.cpp.o.d -o CMakeFiles/SR_1.dir/CM_Server.cpp.o -c /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/CM_Server.cpp

CMakeFiles/SR_1.dir/CM_Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SR_1.dir/CM_Server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/CM_Server.cpp > CMakeFiles/SR_1.dir/CM_Server.cpp.i

CMakeFiles/SR_1.dir/CM_Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SR_1.dir/CM_Server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/CM_Server.cpp -o CMakeFiles/SR_1.dir/CM_Server.cpp.s

CMakeFiles/SR_1.dir/Sended_struct.cpp.o: CMakeFiles/SR_1.dir/flags.make
CMakeFiles/SR_1.dir/Sended_struct.cpp.o: Sended_struct.cpp
CMakeFiles/SR_1.dir/Sended_struct.cpp.o: CMakeFiles/SR_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SR_1.dir/Sended_struct.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SR_1.dir/Sended_struct.cpp.o -MF CMakeFiles/SR_1.dir/Sended_struct.cpp.o.d -o CMakeFiles/SR_1.dir/Sended_struct.cpp.o -c /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/Sended_struct.cpp

CMakeFiles/SR_1.dir/Sended_struct.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SR_1.dir/Sended_struct.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/Sended_struct.cpp > CMakeFiles/SR_1.dir/Sended_struct.cpp.i

CMakeFiles/SR_1.dir/Sended_struct.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SR_1.dir/Sended_struct.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/Sended_struct.cpp -o CMakeFiles/SR_1.dir/Sended_struct.cpp.s

# Object files for target SR_1
SR_1_OBJECTS = \
"CMakeFiles/SR_1.dir/main.cpp.o" \
"CMakeFiles/SR_1.dir/Connect_manager.cpp.o" \
"CMakeFiles/SR_1.dir/CM_Server.cpp.o" \
"CMakeFiles/SR_1.dir/Sended_struct.cpp.o"

# External object files for target SR_1
SR_1_EXTERNAL_OBJECTS =

SR_1: CMakeFiles/SR_1.dir/main.cpp.o
SR_1: CMakeFiles/SR_1.dir/Connect_manager.cpp.o
SR_1: CMakeFiles/SR_1.dir/CM_Server.cpp.o
SR_1: CMakeFiles/SR_1.dir/Sended_struct.cpp.o
SR_1: CMakeFiles/SR_1.dir/build.make
SR_1: CMakeFiles/SR_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable SR_1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SR_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SR_1.dir/build: SR_1
.PHONY : CMakeFiles/SR_1.dir/build

CMakeFiles/SR_1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SR_1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SR_1.dir/clean

CMakeFiles/SR_1.dir/depend:
	cd /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi /home/pi/Documents/Programowanie/Siec/Polaczenie-sieciowe_dla-RPi/CMakeFiles/SR_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SR_1.dir/depend

