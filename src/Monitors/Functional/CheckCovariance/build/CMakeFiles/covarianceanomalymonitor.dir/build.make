# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/build

# Include any dependencies generated for this target.
include CMakeFiles/covarianceanomalymonitor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/covarianceanomalymonitor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/covarianceanomalymonitor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/covarianceanomalymonitor.dir/flags.make

CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.o: CMakeFiles/covarianceanomalymonitor.dir/flags.make
CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.o: CMakeFiles/covarianceanomalymonitor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.o -MF CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.o.d -o CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.o -c /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/src/main.cpp

CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/src/main.cpp > CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.i

CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/src/main.cpp -o CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.s

CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.o: CMakeFiles/covarianceanomalymonitor.dir/flags.make
CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.o: ../src/covarianceAnomalyMonitor.cpp
CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.o: CMakeFiles/covarianceanomalymonitor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.o -MF CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.o.d -o CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.o -c /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/src/covarianceAnomalyMonitor.cpp

CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/src/covarianceAnomalyMonitor.cpp > CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.i

CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/src/covarianceAnomalyMonitor.cpp -o CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.s

# Object files for target covarianceanomalymonitor
covarianceanomalymonitor_OBJECTS = \
"CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.o" \
"CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.o"

# External object files for target covarianceanomalymonitor
covarianceanomalymonitor_EXTERNAL_OBJECTS =

covarianceanomalymonitor: CMakeFiles/covarianceanomalymonitor.dir/src/main.cpp.o
covarianceanomalymonitor: CMakeFiles/covarianceanomalymonitor.dir/src/covarianceAnomalyMonitor.cpp.o
covarianceanomalymonitor: CMakeFiles/covarianceanomalymonitor.dir/build.make
covarianceanomalymonitor: CMakeFiles/covarianceanomalymonitor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable covarianceanomalymonitor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/covarianceanomalymonitor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/covarianceanomalymonitor.dir/build: covarianceanomalymonitor
.PHONY : CMakeFiles/covarianceanomalymonitor.dir/build

CMakeFiles/covarianceanomalymonitor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/covarianceanomalymonitor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/covarianceanomalymonitor.dir/clean

CMakeFiles/covarianceanomalymonitor.dir/depend:
	cd /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/build /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/build /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/Functional/CheckCovAnomalies/build/CMakeFiles/covarianceanomalymonitor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/covarianceanomalymonitor.dir/depend

