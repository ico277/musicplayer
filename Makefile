BUILD_DIR ?= $(shell pwd)/build/
SRC_DIR ?= $(shell pwd)/src/

CC ?= cc
CXX ?= cpp
CFLAGS ?= -O2
CXXFLAGS ?= $(CFLAGS)

.PHONY: run clean lib app

all: lib app 

lib:
	mkdir -p $(BUILD_DIR)/lib/
	$(MAKE) -C $(SRC_DIR)/lib/ -f $(SRC_DIR)/lib/Makefile BUILD_DIR="$(BUILD_DIR)/lib/" CC="$(CC)" CFLAGS="$(CFLAGS)" CXXFLAGS="$(CXXFLAGS)"

app:
	mkdir -p $(BUILD_DIR)/app/
	$(MAKE) -C $(SRC_DIR)/app/ -f $(SRC_DIR)/app/Makefile BUILD_DIR="$(BUILD_DIR)/app/" CC="$(CC)" CFLAGS="$(CFLAGS)" CXXFLAGS="$(CXXFLAGS)"

run: $(BUILD_DIR)/app/musicplayer.out
	$(BUILD_DIR)/app/musicplayer.out

clean:
	$(MAKE) -f $(SRC_DIR)/app/Makefile clean
	$(MAKE) -f $(SRC_DIR)/lib/Makefile clean
	rm -rf $(BUILD_DIR)
