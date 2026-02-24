SRC = $(wildcard ./*.cpp)

.PHONY: clean

shared_lib:
	$(CXX) $(SRC) -o $(BUILD_DIR)/musicplayer.out

clean:
	rm -f $(BUILD_DIR)/musicplayer.out
