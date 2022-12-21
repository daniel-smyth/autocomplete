# Install script for directory: /Users/user/Documents/Github/autocomplete/server

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/user/Documents/Github/autocomplete/server/distribution")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/user/Documents/Github/autocomplete/server/distribution/include/corvusoft/restbed/uri.hpp;/Users/user/Documents/Github/autocomplete/server/distribution/include/corvusoft/restbed/byte.hpp;/Users/user/Documents/Github/autocomplete/server/distribution/include/corvusoft/restbed/common.hpp;/Users/user/Documents/Github/autocomplete/server/distribution/include/corvusoft/restbed/string.hpp;/Users/user/Documents/Github/autocomplete/server/distribution/include/corvusoft/restbed/session.hpp;/Users/user/Documents/Github/autocomplete/server/distribution/include/corvusoft/restbed/request.hpp;/Users/user/Documents/Github/autocomplete/server/distribution/include/corvusoft/restbed/settings.hpp;/Users/user/Documents/Github/autocomplete/server/distribution/include/corvusoft/restbed/response.hpp;/Users/user/Documents/Github/autocomplete/server/distribution/include/corvusoft/restbed/status_code.hpp;/Users/user/Documents/Github/autocomplete/server/distribution/include/corvusoft/restbed/ssl_settings.hpp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/user/Documents/Github/autocomplete/server/distribution/include/corvusoft/restbed" TYPE FILE FILES
    "/Users/user/Documents/Github/autocomplete/server/dependency/restbed/source/corvusoft/restbed/uri.hpp"
    "/Users/user/Documents/Github/autocomplete/server/dependency/restbed/source/corvusoft/restbed/byte.hpp"
    "/Users/user/Documents/Github/autocomplete/server/dependency/restbed/source/corvusoft/restbed/common.hpp"
    "/Users/user/Documents/Github/autocomplete/server/dependency/restbed/source/corvusoft/restbed/string.hpp"
    "/Users/user/Documents/Github/autocomplete/server/dependency/restbed/source/corvusoft/restbed/session.hpp"
    "/Users/user/Documents/Github/autocomplete/server/dependency/restbed/source/corvusoft/restbed/request.hpp"
    "/Users/user/Documents/Github/autocomplete/server/dependency/restbed/source/corvusoft/restbed/settings.hpp"
    "/Users/user/Documents/Github/autocomplete/server/dependency/restbed/source/corvusoft/restbed/response.hpp"
    "/Users/user/Documents/Github/autocomplete/server/dependency/restbed/source/corvusoft/restbed/status_code.hpp"
    "/Users/user/Documents/Github/autocomplete/server/dependency/restbed/source/corvusoft/restbed/ssl_settings.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/Users/user/Documents/Github/autocomplete/server/source/restq")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/corvusoft/restq" TYPE FILE FILES
    "/Users/user/Documents/Github/autocomplete/server/source/autocomplete.hpp"
    "/Users/user/Documents/Github/autocomplete/server/source/server.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "library" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/library" TYPE STATIC_LIBRARY FILES "/Users/user/Documents/Github/autocomplete/server/librestq.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/library/librestq.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/library/librestq.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/library/librestq.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/user/Documents/Github/autocomplete/server/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
