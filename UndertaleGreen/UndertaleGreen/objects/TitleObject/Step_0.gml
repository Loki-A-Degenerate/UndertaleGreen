// Redo this shit oh my god

if image_index < 3 {
	if global.selectButtonPressed {
		if file_exists("UndertaleGreenSave.ini") {
			room_goto(SaveRoom);
		} else {
			room_goto(InstructionsRoom);
		}
		//image_index = 3;
		alarm[0] = -1;
	}
} else if image_index = 3 {
	if global.selectButtonPressed && selected == 0 {
		//var inst = instance_create_depth(1, 1, -9999, WhiteTransitionObject);
		//inst.duration = audio_sound_length(PreIntroCymbal);
		var inst = instance_create_depth(1, 1, -9999, TransitionInObject);
		inst.targetX = 136;
		inst.targetY = 123.5;
		inst.targetFace = FORWARD;
		inst.targetRoom = FlowerBed;	
		var inst2 = instance_create_depth(1, 1, -9999, MenuShake);
		inst2.shakeDuration = audio_sound_length(PreIntroCymbal);
		if !audio_is_playing(PreIntroCymbal) {
			audio_play_sound(PreIntroCymbal, 0, false);
		}
	} else if keyboard_check_pressed(vk_up) {
		audio_play_sound(MenuMove, 0, false);
		selected--; 
		if selected < 0 {
			selected = 1;
		}
	} else if keyboard_check_pressed(vk_down) {
		audio_play_sound(MenuMove, 0, false);
		selected++;
		if selected > 1 {
			selected = 0;
		}
	}
} 

if selected == 1 && global.selectButtonPressed {
	audio_play_sound(MenuSelect, 0, false);
	room_goto(ConfigMenu);
}