var pagesNeeded = ceil(array_length(global.inventory) / 4);

for (var i = 1; i <= pagesNeeded; i++) {
	pages[i] = i;
	
}



leftKey = keyboard_check_pressed(vk_left);
rightKey = keyboard_check_pressed(vk_right);
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
} else if rightKey {
	selectedX++;
	if selectedX > 1 {
		if selectedY == 0 {
			curPage++;
			show_debug_message("we go here");
			selectedX = 0;
		}
		selectedX = 0;
	}
	audio_play_sound(MenuMove, 0, false);
} else if leftKey {
	selectedX--;
	if selectedX < 0 {
		selectedX = 1;
	}
	audio_play_sound(MenuMove, 0, false);
}

soulX = 72 + (selectedX * 240);
soulY = 286 + (selectedY * 32);

if global.selectButtonPressed {
	audio_play_sound(MenuSelect, 0, false);

}

if global.deselectButtonPressed {
	show_debug_message("say what");
	instance_destroy();
}