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

# Utility rule file for create-db.

# Include any custom commands dependencies for this target.
include ScriptsDB/CMakeFiles/create-db.dir/compiler_depend.make

# Include the progress variables for this target.
include ScriptsDB/CMakeFiles/create-db.dir/progress.make

ScriptsDB/CMakeFiles/create-db:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mouvzee/ingegneria/anomalyDetection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Creazione del database usando create.sh"
	cd /home/mouvzee/ingegneria/anomalyDetection/build/ScriptsDB && /usr/bin/cmake -E echo Esecuzione\ degli\ script\ SQL\ per\ creare\ il\ database...
	cd /home/mouvzee/ingegneria/anomalyDetection/build/ScriptsDB && sudo /home/mouvzee/ingegneria/anomalyDetection/create.sh

create-db: ScriptsDB/CMakeFiles/create-db
create-db: ScriptsDB/CMakeFiles/create-db.dir/build.make
.PHONY : create-db

# Rule to build all files generated by this target.
ScriptsDB/CMakeFiles/create-db.dir/build: create-db
.PHONY : ScriptsDB/CMakeFiles/create-db.dir/build

ScriptsDB/CMakeFiles/create-db.dir/clean:
	cd /home/mouvzee/ingegneria/anomalyDetection/build/ScriptsDB && $(CMAKE_COMMAND) -P CMakeFiles/create-db.dir/cmake_clean.cmake
.PHONY : ScriptsDB/CMakeFiles/create-db.dir/clean

ScriptsDB/CMakeFiles/create-db.dir/depend:
	cd /home/mouvzee/ingegneria/anomalyDetection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mouvzee/ingegneria/anomalyDetection /home/mouvzee/ingegneria/anomalyDetection/ScriptsDB /home/mouvzee/ingegneria/anomalyDetection/build /home/mouvzee/ingegneria/anomalyDetection/build/ScriptsDB /home/mouvzee/ingegneria/anomalyDetection/build/ScriptsDB/CMakeFiles/create-db.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ScriptsDB/CMakeFiles/create-db.dir/depend

