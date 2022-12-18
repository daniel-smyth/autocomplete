MKFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MKFILE_DIR := $(dir $(MKFILE_PATH))

ifndef RESTBED_MODULES_PATH
export RESTBED_MODULES_PATH=$(MKFILE_DIR)/lib/restbed
endif

ifndef NLOHMANN_MODULES_PATH
export NLOHMANN_MODULES_PATH=/usr/local/Cellar/nlohmann-json/3.11.2
endif

INCLUDE =  -I"$(NLOHMANN_MODULES_PATH)/include" -I"$(RESTBED_MODULES_PATH)/distribution/include/"
LIBRARIES = -L"$(RESTBED_MODULES_PATH)/distribution/library" -lrestbed

CC=gcc
CXX=g++ -Wno-unused-result -std=c++11 -std=c++14 -Wno-c++98-compat -Wno-c++98-compat-pedantic -Weverything
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
