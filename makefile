ifndef RESTBED_MODULES_PATH
export RESTBED_MODULES_PATH=/Users/user/Documents/Github/autocomplete/lib/restbed
endif

INCLUDE = -I"$(RESTBED_MODULES_PATH)/distribution/include/"
LIBRARIES = -L"$(RESTBED_MODULES_PATH)/distribution/library" -lrestbed

CC=gcc
CXX=g++ -Wno-unused-result -std=c++11 -std=c++14 -Weverything
RM=rm -f

SRC_DIR := src
OBJ_DIR := obj
BIN_DIR := bin

EXE := $(BIN_DIR)/server
SRC := $(wildcard $(SRC_DIR)/*.cpp)
OBJ := $(SRC:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)

CPPFLAGS := -Iinclude $(INCLUDE) -MMD -MP
CFLAGS   := -Wall
LDFLAGS  := -Llib
LDLIBS   := -lm $(LIBRARIES)

.PHONY: all clean

all: $(EXE)

$(EXE): $(OBJ) | $(BIN_DIR)
	$(CXX) $(LDFLAGS) $^ $(LDLIBS) -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp | $(OBJ_DIR)
	$(CXX) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

$(BIN_DIR) $(OBJ_DIR):
	mkdir -p $@

clean:
	@$(RM) -rv $(BIN_DIR) $(OBJ_DIR)

-include $(OBJ:.o=.d)

# ifndef RESTBED_MODULES_PATH
# export RESTBED_MODULES_PATH=/Users/user/Documents/Github/autocomplete/lib/restbed
# endif

# INCLUDE = -I"$(RESTBED_MODULES_PATH)/distribution/include/" 
# LIBRARIES = -L"$(RESTBED_MODULES_PATH)/distribution/library" -lrestbed

# CC=gcc
# CXX=g++ -Wno-unused-result -std=c++11 -std=c++14 -Weverything
# RM=rm -f
# CPPFLAGS=-c -Wall
# LDFLAGS=-g $(INCLUDE)
# LDLIBS=-g $(LIBRARIES)

# SRC_DIR := src
# OBJ_DIR := obj
# BIN_DIR := bin

# SOURCES := $(wildcard $(SRC_DIR)/*.cpp)
# OBJECTS=$(SOURCES:.cpp=.o)
# EXECUTABLE=server

# all: $(SOURCES) $(EXECUTABLE)

# $(EXECUTABLE): $(OBJECTS)
# 	$(CXX) $(LDFLAGS) $(OBJECTS) -o $@ $(LDLIBS)

# .cpp.o:
# 	$(CXX) $(LDFLAGS) $(CPPFLAGS) $< -o $@ $(LDLIBS)

# clean:
# 	$(RM) $(OBJECTS) $(EXECUTABLE)