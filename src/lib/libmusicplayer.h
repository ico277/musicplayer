#include <stdio.h>
#include <stdbool.h>

typedef struct {} Song_t;

typedef struct {} Playlist_t;

typedef struct {
    Song_t* current_song;
    Playlist_t* playlists;
    size_t playlist_count;
    bool heap;
} MusicPlayer_t;


MusicPlayer_t* init_musicplayer(MusicPlayer_t mp);
