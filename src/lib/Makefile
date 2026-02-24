SRC = $(wildcard ./*.c)

.PHONY: clean

shared_lib:
	$(CC) -fPIC -shared $(SRC) -o $(BUILD_DIR)/libmusicplayer.so

clean:
	rm -f $(BUILD_DIR)/libmusicplayer.so
