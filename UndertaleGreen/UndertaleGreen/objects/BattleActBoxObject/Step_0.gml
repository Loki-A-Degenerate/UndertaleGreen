downKey = keyboard_check_pressed(vk_down);
upKey = keyboard_check_pressed(vk_up);


if upKey {
	selectedY--;
	if selectedY < 0 {
		selectedY = 1;
	}
	audio_play_sound(MenuMove, 0, false);
} else if downKey {
	selectedY++;
	if selectedY > 1 {
		selectedY = 0;
	}
	audio_play_sound(MenuMove, 0, false);
}


soulX = 72 + (selectedX * 240);
soulY = 286 + (selectedY * 32);

if global.selectButtonPressed {
	audio_play_sound(MenuSelect, 0, false);
	if selectedY == 0 {
				
	} else {
		
	}
}


if global.deselectButtonPressed {
	instance_destroy();
}