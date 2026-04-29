// Stop that boom sound prematurely and play it again.
audio_stop_sound(IntroBoom);
audio_play_sound(IntroBoom, 0, false);
// Change image.
image_index = 1;

// Set off alarm once the new sound ends
alarm[1] = audio_sound_length(IntroBoom) * game_get_speed(gamespeed_fps);