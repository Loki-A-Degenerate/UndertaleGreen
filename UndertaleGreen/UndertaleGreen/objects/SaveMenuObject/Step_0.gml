if keyboard_check_pressed(vk_right) && selected < 1
{
	selected++;
	audio_play_sound(MenuMove, 0, false);
}
else if keyboard_check_pressed(vk_left) && selected > 0
{
	selected--;
	audio_play_sound(MenuMove, 0, false);
}

if selected == 0
{
	if global.selectButtonPressed
	{
		SavingScript();
		audio_play_sound(Save, 0, false);
		saving = true;
		selected = -1;
	}
}