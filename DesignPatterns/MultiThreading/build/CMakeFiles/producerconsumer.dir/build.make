# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/akash/projects/LLD/DesignPatterns/MultiThreading

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/akash/projects/LLD/DesignPatterns/MultiThreading/build

# Include any dependencies generated for this target.
include CMakeFiles/producerconsumer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/producerconsumer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/producerconsumer.dir/flags.make

CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o: CMakeFiles/producerconsumer.dir/flags.make
CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o: ../producer_consumer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/akash/projects/LLD/DesignPatterns/MultiThreading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o -c /home/akash/projects/LLD/DesignPatterns/MultiThreading/producer_consumer.cpp

CMakeFiles/producerconsumer.dir/producer_consumer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/producerconsumer.dir/producer_consumer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/akash/projects/LLD/DesignPatterns/MultiThreading/producer_consumer.cpp > CMakeFiles/producerconsumer.dir/producer_consumer.cpp.i

CMakeFiles/producerconsumer.dir/producer_consumer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/producerconsumer.dir/producer_consumer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/akash/projects/LLD/DesignPatterns/MultiThreading/producer_consumer.cpp -o CMakeFiles/producerconsumer.dir/producer_consumer.cpp.s

CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o.requires:

.PHONY : CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o.requires

CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o.provides: CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o.requires
	$(MAKE) -f CMakeFiles/producerconsumer.dir/build.make CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o.provides.build
.PHONY : CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o.provides

CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o.provides.build: CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o


# Object files for target producerconsumer
producerconsumer_OBJECTS = \
"CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o"

# External object files for target producerconsumer
producerconsumer_EXTERNAL_OBJECTS =

producerconsumer: CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o
producerconsumer: CMakeFiles/producerconsumer.dir/build.make
producerconsumer: CMakeFiles/producerconsumer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/akash/projects/LLD/DesignPatterns/MultiThreading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable producerconsumer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/producerconsumer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/producerconsumer.dir/build: producerconsumer

.PHONY : CMakeFiles/producerconsumer.dir/build

CMakeFiles/producerconsumer.dir/requires: CMakeFiles/producerconsumer.dir/producer_consumer.cpp.o.requires

.PHONY : CMakeFiles/producerconsumer.dir/requires

CMakeFiles/producerconsumer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/producerconsumer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/producerconsumer.dir/clean

CMakeFiles/producerconsumer.dir/depend:
	cd /home/akash/projects/LLD/DesignPatterns/MultiThreading/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/akash/projects/LLD/DesignPatterns/MultiThreading /home/akash/projects/LLD/DesignPatterns/MultiThreading /home/akash/projects/LLD/DesignPatterns/MultiThreading/build /home/akash/projects/LLD/DesignPatterns/MultiThreading/build /home/akash/projects/LLD/DesignPatterns/MultiThreading/build/CMakeFiles/producerconsumer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/producerconsumer.dir/depend

