# C++ Server with Autocomplete

## Description

C++ RESTful server with trie traversal logic for an autocomplete search.

**URL:** todo

## Get started

Building the server.

## Install CMake

CMake is required to build the project.

```bash
brew install cmake
```

## Install restbed

Restbed is a RESTful framework for C++.

```bash
mkdir lib
cd lib
git clone --recursive https://github.com/corvusoft/restbed.git
mkdir restbed/build
cd restbed/build
cmake [-DBUILD_SSL=NO] [-DBUILD_TESTS=NO] ..
make install
make test
```

## Compile

Navigate back to root and compile the project via make file.

```bash
make
```

## Run Server

Navigate back to root and compile the project via make file.

```bash
LD_LIBRARY_PATH="/Users/user/Documents/Github/autocomplete/lib/restbed/distribution/library" ./bin/server
```
