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
CMAKE_SOURCE_DIR = /home/mouvzee/ingegneria/anomalyDetection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mouvzee/ingegneria/anomalyDetection/build

# Utility rule file for run_all.

# Include any custom commands dependencies for this target.
include CMakeFiles/run_all.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/run_all.dir/progress.make

CMakeFiles/run_all: src/TestGenerator/TestGenerator
CMakeFiles/run_all: src/SUD/AverageAndCovariance/averageandcovariance
CMakeFiles/run_all: src/SUD/AverageAnomalyPresence/averageanomalypresence
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mouvzee/ingegneria/anomalyDetection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Esecuzione di tutti gli eseguibili"
	src/TestGenerator/TestGenerator
	src/SUD/AverageAndCovariance/averageandcovariance
	src/SUD/AverageAnomalyPresence/averageanomalypresence

run_all: CMakeFiles/run_all
run_all: CMakeFiles/run_all.dir/build.make
.PHONY : run_all

# Rule to build all files generated by this target.
CMakeFiles/run_all.dir/build: run_all
.PHONY : CMakeFiles/run_all.dir/build

CMakeFiles/run_all.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/run_all.dir/cmake_clean.cmake
.PHONY : CMakeFiles/run_all.dir/clean

CMakeFiles/run_all.dir/depend:
	cd /home/mouvzee/ingegneria/anomalyDetection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mouvzee/ingegneria/anomalyDetection /home/mouvzee/ingegneria/anomalyDetection /home/mouvzee/ingegneria/anomalyDetection/build /home/mouvzee/ingegneria/anomalyDetection/build /home/mouvzee/ingegneria/anomalyDetection/build/CMakeFiles/run_all.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/run_all.dir/depend

