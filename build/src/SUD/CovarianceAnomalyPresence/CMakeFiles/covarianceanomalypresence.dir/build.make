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

# Include any dependencies generated for this target.
include src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/compiler_depend.make

# Include the progress variables for this target.
include src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/progress.make

# Include the compile flags for this target's objects.
include src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/flags.make

src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.o: src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/flags.make
src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.o: ../src/SUD/CovarianceAnomalyPresence/src/main.cpp
src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.o: src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mouvzee/ingegneria/anomalyDetection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.o"
	cd /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.o -MF CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.o.d -o CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.o -c /home/mouvzee/ingegneria/anomalyDetection/src/SUD/CovarianceAnomalyPresence/src/main.cpp

src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.i"
	cd /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mouvzee/ingegneria/anomalyDetection/src/SUD/CovarianceAnomalyPresence/src/main.cpp > CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.i

src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.s"
	cd /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mouvzee/ingegneria/anomalyDetection/src/SUD/CovarianceAnomalyPresence/src/main.cpp -o CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.s

src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.o: src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/flags.make
src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.o: ../src/SUD/CovarianceAnomalyPresence/src/detectAnomaly.cpp
src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.o: src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mouvzee/ingegneria/anomalyDetection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.o"
	cd /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.o -MF CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.o.d -o CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.o -c /home/mouvzee/ingegneria/anomalyDetection/src/SUD/CovarianceAnomalyPresence/src/detectAnomaly.cpp

src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.i"
	cd /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mouvzee/ingegneria/anomalyDetection/src/SUD/CovarianceAnomalyPresence/src/detectAnomaly.cpp > CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.i

src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.s"
	cd /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mouvzee/ingegneria/anomalyDetection/src/SUD/CovarianceAnomalyPresence/src/detectAnomaly.cpp -o CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.s

src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.o: src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/flags.make
src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.o: ../src/SUD/CovarianceAnomalyPresence/src/updateDataSQL.cpp
src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.o: src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mouvzee/ingegneria/anomalyDetection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.o"
	cd /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.o -MF CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.o.d -o CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.o -c /home/mouvzee/ingegneria/anomalyDetection/src/SUD/CovarianceAnomalyPresence/src/updateDataSQL.cpp

src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.i"
	cd /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mouvzee/ingegneria/anomalyDetection/src/SUD/CovarianceAnomalyPresence/src/updateDataSQL.cpp > CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.i

src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.s"
	cd /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mouvzee/ingegneria/anomalyDetection/src/SUD/CovarianceAnomalyPresence/src/updateDataSQL.cpp -o CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.s

# Object files for target covarianceanomalypresence
covarianceanomalypresence_OBJECTS = \
"CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.o" \
"CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.o" \
"CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.o"

# External object files for target covarianceanomalypresence
covarianceanomalypresence_EXTERNAL_OBJECTS =

src/SUD/CovarianceAnomalyPresence/covarianceanomalypresence: src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/main.cpp.o
src/SUD/CovarianceAnomalyPresence/covarianceanomalypresence: src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/detectAnomaly.cpp.o
src/SUD/CovarianceAnomalyPresence/covarianceanomalypresence: src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/src/updateDataSQL.cpp.o
src/SUD/CovarianceAnomalyPresence/covarianceanomalypresence: src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/build.make
src/SUD/CovarianceAnomalyPresence/covarianceanomalypresence: src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mouvzee/ingegneria/anomalyDetection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable covarianceanomalypresence"
	cd /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/covarianceanomalypresence.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/build: src/SUD/CovarianceAnomalyPresence/covarianceanomalypresence
.PHONY : src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/build

src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/clean:
	cd /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence && $(CMAKE_COMMAND) -P CMakeFiles/covarianceanomalypresence.dir/cmake_clean.cmake
.PHONY : src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/clean

src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/depend:
	cd /home/mouvzee/ingegneria/anomalyDetection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mouvzee/ingegneria/anomalyDetection /home/mouvzee/ingegneria/anomalyDetection/src/SUD/CovarianceAnomalyPresence /home/mouvzee/ingegneria/anomalyDetection/build /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence /home/mouvzee/ingegneria/anomalyDetection/build/src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/SUD/CovarianceAnomalyPresence/CMakeFiles/covarianceanomalypresence.dir/depend

