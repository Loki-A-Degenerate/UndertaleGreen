rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
downKey = keyboard_check(vk_down);
upKey = keyboard_check(vk_up);

//ini_open("UndertaleGreenSave.ini");

//locale = ini_read_string("Save1", "locale", "Menu");
//switch locale {
//	case "Ruins":
//		saveScreen = SampleSaveScreen;
//		break;
//	case "Somewhere":
//		saveScreen = SampleSaveScreen2;
//		break;
//}

//localRoom =  ini_read_real("Save1", "room", 0);
//playerX = ini_read_real("Save1", "x", 0);
//playerY = ini_read_real("Save1", "y", 0);
//time = ini_read_real("Save1", "timer", 0);
//face = ini_read_real("Save1", "facing", 29);

//name = ini_read_string("Player", "name", "Sunny");
//lv = ini_read_real("Player", "LV", 1);

if rightKey {
	selected = 1;
} else if leftKey {
	selected = 0;
} else if downKey {
	selected = 2;
}
if selected == 2 {
	if upKey {
		selected = 0;
	}
}	

if global.selectButtonReleased {
	state = 1;
}
if state {
	if global.selectButtonPressed {
		if selected == 0 {
			
			var inst = instance_create_depth(1, 1, -9999, TransitionInObject);
			inst.targetRoom = localRoom;
			inst.targetX = playerX;
			inst.targetY = playerY;
			inst.targetFace = FORWARD;
			
		} else if selected == 1 {
			if file_exists("UndertaleGreenSave.ini") {
				
				var inst = instance_create_depth(1, 1, -9999, WhiteTransitionObject);
				inst.duration = audio_sound_length(PreIntroCymbal);
				//var inst = instance_create_depth(1, 1, -9999, TransitionInObject);
				inst.targetX = 136;
				inst.targetY = 123.5;
				inst.targetFace = FORWARD;
				inst.targetRoom = FlowerBed;	
				
				var inst2 = instance_create_depth(1, 1, -9999, MenuShake);
				inst2.shakeDuration = audio_sound_length(PreIntroCymbal);
				if !audio_is_playing(PreIntroCymbal) {
					audio_play_sound(PreIntroCymbal, 0, false);
				}
				
				file_delete("UndertaleGreenSave.ini");
				
				CreatePlayerStats();
			}
			
		} else if selected == 2 {
			room_goto(ConfigMenu);
		}
	}
}