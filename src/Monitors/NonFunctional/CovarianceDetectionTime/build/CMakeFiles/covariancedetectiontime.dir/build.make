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
CMAKE_SOURCE_DIR = /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/build

# Include any dependencies generated for this target.
include CMakeFiles/covariancedetectiontime.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/covariancedetectiontime.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/covariancedetectiontime.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/covariancedetectiontime.dir/flags.make

CMakeFiles/covariancedetectiontime.dir/src/main.cpp.o: CMakeFiles/covariancedetectiontime.dir/flags.make
CMakeFiles/covariancedetectiontime.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/covariancedetectiontime.dir/src/main.cpp.o: CMakeFiles/covariancedetectiontime.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/covariancedetectiontime.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/covariancedetectiontime.dir/src/main.cpp.o -MF CMakeFiles/covariancedetectiontime.dir/src/main.cpp.o.d -o CMakeFiles/covariancedetectiontime.dir/src/main.cpp.o -c /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/src/main.cpp

CMakeFiles/covariancedetectiontime.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/covariancedetectiontime.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/src/main.cpp > CMakeFiles/covariancedetectiontime.dir/src/main.cpp.i

CMakeFiles/covariancedetectiontime.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/covariancedetectiontime.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/src/main.cpp -o CMakeFiles/covariancedetectiontime.dir/src/main.cpp.s

CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.o: CMakeFiles/covariancedetectiontime.dir/flags.make
CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.o: ../src/updateDataSQL.cpp
CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.o: CMakeFiles/covariancedetectiontime.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.o -MF CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.o.d -o CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.o -c /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/src/updateDataSQL.cpp

CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/src/updateDataSQL.cpp > CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.i

CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/src/updateDataSQL.cpp -o CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.s

# Object files for target covariancedetectiontime
covariancedetectiontime_OBJECTS = \
"CMakeFiles/covariancedetectiontime.dir/src/main.cpp.o" \
"CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.o"

# External object files for target covariancedetectiontime
covariancedetectiontime_EXTERNAL_OBJECTS =

covariancedetectiontime: CMakeFiles/covariancedetectiontime.dir/src/main.cpp.o
covariancedetectiontime: CMakeFiles/covariancedetectiontime.dir/src/updateDataSQL.cpp.o
covariancedetectiontime: CMakeFiles/covariancedetectiontime.dir/build.make
covariancedetectiontime: CMakeFiles/covariancedetectiontime.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable covariancedetectiontime"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/covariancedetectiontime.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/covariancedetectiontime.dir/build: covariancedetectiontime
.PHONY : CMakeFiles/covariancedetectiontime.dir/build

CMakeFiles/covariancedetectiontime.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/covariancedetectiontime.dir/cmake_clean.cmake
.PHONY : CMakeFiles/covariancedetectiontime.dir/clean

CMakeFiles/covariancedetectiontime.dir/depend:
	cd /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/build /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/build /home/mouvzee/ingegneria/anomalyDetection/src/Monitors/NonFunctional/CovarianceDetectionTime/build/CMakeFiles/covariancedetectiontime.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/covariancedetectiontime.dir/depend

