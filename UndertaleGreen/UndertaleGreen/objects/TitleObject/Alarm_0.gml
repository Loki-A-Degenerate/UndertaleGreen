audio_stop_sound(IntroBoom);
audio_play_sound(IntroBoom, 0, false);
image_index = 1;

alarm[1] = audio_sound_length(IntroBoom) * game_get_speed(gamespeed_fps);