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
else
{
	if global.selectButtonPressed
	{
		closeSaveMenu();
	}
}

if saving
{
	if global.selectButtonReleased
	{
		state = 1;
	}
	if state && global.selectButtonPressed
	{
		saving = false;
		state = 0;
		draw_set_colour(c_white);
		closeSaveMenu();
	}
}