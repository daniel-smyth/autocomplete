# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.25.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.25.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/user/Documents/Github/autocomplete/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/user/Documents/Github/autocomplete/server

# Include any dependencies generated for this target.
include CMakeFiles/restq.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/restq.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/restq.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/restq.dir/flags.make

CMakeFiles/restq.dir/source/autocomplete.cpp.o: CMakeFiles/restq.dir/flags.make
CMakeFiles/restq.dir/source/autocomplete.cpp.o: source/autocomplete.cpp
CMakeFiles/restq.dir/source/autocomplete.cpp.o: CMakeFiles/restq.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Documents/Github/autocomplete/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/restq.dir/source/autocomplete.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/restq.dir/source/autocomplete.cpp.o -MF CMakeFiles/restq.dir/source/autocomplete.cpp.o.d -o CMakeFiles/restq.dir/source/autocomplete.cpp.o -c /Users/user/Documents/Github/autocomplete/server/source/autocomplete.cpp

CMakeFiles/restq.dir/source/autocomplete.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/restq.dir/source/autocomplete.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/Documents/Github/autocomplete/server/source/autocomplete.cpp > CMakeFiles/restq.dir/source/autocomplete.cpp.i

CMakeFiles/restq.dir/source/autocomplete.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/restq.dir/source/autocomplete.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/Documents/Github/autocomplete/server/source/autocomplete.cpp -o CMakeFiles/restq.dir/source/autocomplete.cpp.s

CMakeFiles/restq.dir/source/server.cpp.o: CMakeFiles/restq.dir/flags.make
CMakeFiles/restq.dir/source/server.cpp.o: source/server.cpp
CMakeFiles/restq.dir/source/server.cpp.o: CMakeFiles/restq.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Documents/Github/autocomplete/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/restq.dir/source/server.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/restq.dir/source/server.cpp.o -MF CMakeFiles/restq.dir/source/server.cpp.o.d -o CMakeFiles/restq.dir/source/server.cpp.o -c /Users/user/Documents/Github/autocomplete/server/source/server.cpp

CMakeFiles/restq.dir/source/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/restq.dir/source/server.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/Documents/Github/autocomplete/server/source/server.cpp > CMakeFiles/restq.dir/source/server.cpp.i

CMakeFiles/restq.dir/source/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/restq.dir/source/server.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/Documents/Github/autocomplete/server/source/server.cpp -o CMakeFiles/restq.dir/source/server.cpp.s

CMakeFiles/restq.dir/dependency/load/osx/memory.cc.o: CMakeFiles/restq.dir/flags.make
CMakeFiles/restq.dir/dependency/load/osx/memory.cc.o: dependency/load/osx/memory.cc
CMakeFiles/restq.dir/dependency/load/osx/memory.cc.o: CMakeFiles/restq.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Documents/Github/autocomplete/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/restq.dir/dependency/load/osx/memory.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -w -MD -MT CMakeFiles/restq.dir/dependency/load/osx/memory.cc.o -MF CMakeFiles/restq.dir/dependency/load/osx/memory.cc.o.d -o CMakeFiles/restq.dir/dependency/load/osx/memory.cc.o -c /Users/user/Documents/Github/autocomplete/server/dependency/load/osx/memory.cc

CMakeFiles/restq.dir/dependency/load/osx/memory.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/restq.dir/dependency/load/osx/memory.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -w -E /Users/user/Documents/Github/autocomplete/server/dependency/load/osx/memory.cc > CMakeFiles/restq.dir/dependency/load/osx/memory.cc.i

CMakeFiles/restq.dir/dependency/load/osx/memory.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/restq.dir/dependency/load/osx/memory.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -w -S /Users/user/Documents/Github/autocomplete/server/dependency/load/osx/memory.cc -o CMakeFiles/restq.dir/dependency/load/osx/memory.cc.s

CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.o: CMakeFiles/restq.dir/flags.make
CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.o: dependency/load/osx/cpu.cc
CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.o: CMakeFiles/restq.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Documents/Github/autocomplete/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -w -MD -MT CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.o -MF CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.o.d -o CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.o -c /Users/user/Documents/Github/autocomplete/server/dependency/load/osx/cpu.cc

CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -w -E /Users/user/Documents/Github/autocomplete/server/dependency/load/osx/cpu.cc > CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.i

CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -w -S /Users/user/Documents/Github/autocomplete/server/dependency/load/osx/cpu.cc -o CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.s

# Object files for target restq
restq_OBJECTS = \
"CMakeFiles/restq.dir/source/autocomplete.cpp.o" \
"CMakeFiles/restq.dir/source/server.cpp.o" \
"CMakeFiles/restq.dir/dependency/load/osx/memory.cc.o" \
"CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.o"

# External object files for target restq
restq_EXTERNAL_OBJECTS = \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/http.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/detail/http_impl.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/uri.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/string.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/resource.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/rule.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/service.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/detail/service_impl.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/session.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/detail/session_impl.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/session_manager.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/web_socket.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/detail/web_socket_impl.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/web_socket_message.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/detail/web_socket_manager_impl.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/detail/socket_impl.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/request.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/response.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/settings.cpp.o" \
"/Users/user/Documents/Github/autocomplete/server/CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/ssl_settings.cpp.o"

librestq.a: CMakeFiles/restq.dir/source/autocomplete.cpp.o
librestq.a: CMakeFiles/restq.dir/source/server.cpp.o
librestq.a: CMakeFiles/restq.dir/dependency/load/osx/memory.cc.o
librestq.a: CMakeFiles/restq.dir/dependency/load/osx/cpu.cc.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/http.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/detail/http_impl.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/uri.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/string.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/resource.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/rule.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/service.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/detail/service_impl.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/session.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/detail/session_impl.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/session_manager.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/web_socket.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/detail/web_socket_impl.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/web_socket_message.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/detail/web_socket_manager_impl.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/detail/socket_impl.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/request.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/response.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/settings.cpp.o
librestq.a: CMakeFiles/restbed.dir/dependency/restbed/source/corvusoft/restbed/ssl_settings.cpp.o
librestq.a: CMakeFiles/restq.dir/build.make
librestq.a: CMakeFiles/restq.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/user/Documents/Github/autocomplete/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library librestq.a"
	$(CMAKE_COMMAND) -P CMakeFiles/restq.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/restq.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/restq.dir/build: librestq.a
.PHONY : CMakeFiles/restq.dir/build

CMakeFiles/restq.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/restq.dir/cmake_clean.cmake
.PHONY : CMakeFiles/restq.dir/clean

CMakeFiles/restq.dir/depend:
	cd /Users/user/Documents/Github/autocomplete/server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/user/Documents/Github/autocomplete/server /Users/user/Documents/Github/autocomplete/server /Users/user/Documents/Github/autocomplete/server /Users/user/Documents/Github/autocomplete/server /Users/user/Documents/Github/autocomplete/server/CMakeFiles/restq.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/restq.dir/depend
