# originating https://github.com/TheNetAdmin/Makefile-Templates
# tool marcros
CC := g++
CCFLAG := -std=c++11
DBGFLAG := -g
CCOBJFLAG := $(CCFLAG) -c

# path marcros
BIN_PATH := bin
OBJ_PATH := obj
SRC_PATH := src
DBG_PATH := debug

# compile marcros
TARGET_NAME := main

TARGET := ../$(TARGET_NAME)
TARGET_DEBUG := $(DBG_PATH)/$(TARGET_NAME)

# src files & obj files
INC := src/bag.h
SRC := src/main.cpp \
		src/bag.cpp
OBJ := main.o

# clean files list
CLEAN_LIST := $(TARGET)

# default rule
main: ${SRC} ${INC}
	$(CC) $(CCFLAG) $(DBGFLAG) -o ${TARGET} ${SRC}

.PHONY: clean
clean:
	@echo CLEAN $(CLEAN_LIST)
	@rm -f $(CLEAN_LIST)
