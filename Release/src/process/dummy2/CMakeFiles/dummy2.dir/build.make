# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/Release"

# Include any dependencies generated for this target.
include src/process/dummy2/CMakeFiles/dummy2.dir/depend.make

# Include the progress variables for this target.
include src/process/dummy2/CMakeFiles/dummy2.dir/progress.make

# Include the compile flags for this target's objects.
include src/process/dummy2/CMakeFiles/dummy2.dir/flags.make

src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o: src/process/dummy2/CMakeFiles/dummy2.dir/flags.make
src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o: ../src/process/dummy2/dummy2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/Release/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o"
	cd "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/Release/src/process/dummy2" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dummy2.dir/dummy2.o -c "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/src/process/dummy2/dummy2.cpp"

src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dummy2.dir/dummy2.i"
	cd "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/Release/src/process/dummy2" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/src/process/dummy2/dummy2.cpp" > CMakeFiles/dummy2.dir/dummy2.i

src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dummy2.dir/dummy2.s"
	cd "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/Release/src/process/dummy2" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/src/process/dummy2/dummy2.cpp" -o CMakeFiles/dummy2.dir/dummy2.s

src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o.requires:
.PHONY : src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o.requires

src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o.provides: src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o.requires
	$(MAKE) -f src/process/dummy2/CMakeFiles/dummy2.dir/build.make src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o.provides.build
.PHONY : src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o.provides

src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o.provides.build: src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o

# Object files for target dummy2
dummy2_OBJECTS = \
"CMakeFiles/dummy2.dir/dummy2.o"

# External object files for target dummy2
dummy2_EXTERNAL_OBJECTS =

src/process/dummy2/dummy2: src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o
src/process/dummy2/dummy2: src/process/dummy2/CMakeFiles/dummy2.dir/build.make
src/process/dummy2/dummy2: src/lib/liblib.a
src/process/dummy2/dummy2: src/process/dummy2/CMakeFiles/dummy2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable dummy2"
	cd "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/Release/src/process/dummy2" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dummy2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/process/dummy2/CMakeFiles/dummy2.dir/build: src/process/dummy2/dummy2
.PHONY : src/process/dummy2/CMakeFiles/dummy2.dir/build

src/process/dummy2/CMakeFiles/dummy2.dir/requires: src/process/dummy2/CMakeFiles/dummy2.dir/dummy2.o.requires
.PHONY : src/process/dummy2/CMakeFiles/dummy2.dir/requires

src/process/dummy2/CMakeFiles/dummy2.dir/clean:
	cd "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/Release/src/process/dummy2" && $(CMAKE_COMMAND) -P CMakeFiles/dummy2.dir/cmake_clean.cmake
.PHONY : src/process/dummy2/CMakeFiles/dummy2.dir/clean

src/process/dummy2/CMakeFiles/dummy2.dir/depend:
	cd "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/Release" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes" "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/src/process/dummy2" "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/Release" "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/Release/src/process/dummy2" "/home/german/Escritorio/Facultad/75.59-Programacion Concurrente/Proyecto-TecConcurrentes/Release/src/process/dummy2/CMakeFiles/dummy2.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : src/process/dummy2/CMakeFiles/dummy2.dir/depend

