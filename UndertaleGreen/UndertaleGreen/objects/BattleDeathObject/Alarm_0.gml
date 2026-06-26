instance_destroy(SoulObject);
audio_play_sound(SoulBreakSound1, 0, false);
instance_create_layer(soulX, soulY, "Heartbreak", SoulBreakObject);
alarm[1] = 60;