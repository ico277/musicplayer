BUILD_DIR ?= $(shell pwd)/
SRC_DIR ?= $(shell pwd)/src/

CC ?= cc
CFLAGS ?= -O2
CXXFLAGS ?= $(CFLAGS)

.PHONY: all run

all: lib app

lib:
	mkdir -p $(BUILD_DIR)/lib/
	$(MAKE) -f $(SRC_DIR)/lib/Makefile BUILD_DIR="$(BUILD_DIR)/lib/" CC="$(CC)" CFLAGS="$(CFLAGS)" CXXFLAGS="$(CXXFLAGS)"

app:
	mkdir -p $(BUILD_DIR)/app/
	$(MAKE) -f $(SRC_DIR)/app/Makefile BUILD_DIR="$(BUILD_DIR)/app/" CC="$(CC)" CFLAGS="$(CFLAGS)" CXXFLAGS="$(CXXFLAGS)"

run: $(BUILD_DIR)/app/musicplayer.out
	$(BUILD_DIR)/app/musicplayer.out
