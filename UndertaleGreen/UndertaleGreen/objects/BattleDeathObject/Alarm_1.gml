instance_destroy(SoulBreakObject);
for (var i = 0; i < 6; i++) {
	instance_create_layer(soulX, soulY, "Heartbreak", SoulShardObject);
}
audio_play_sound(SoulBreakSound2, 0, false);
alarm[2] = 90;