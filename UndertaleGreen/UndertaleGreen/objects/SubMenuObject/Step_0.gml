// What type of submenu to draw and the heights of the menus
switch menuType {
	case "item":
		boxRightH = boxItemH;
		break;
	case "stats":
		boxRightH = boxStatH;
		break;
	case "mail":
		boxRightH = boxMailH;
		break;
}

if menuType == "item" && !optionState {
	if keyboard_check_pressed(vk_down) && global.inventory[selected + 1] != undefined {
		selected++;
		audio_play_sound(MenuMove, 0, false);
	} else if  keyboard_check_pressed(vk_up) && selected > 0 {
		selected--;
		audio_play_sound(MenuMove, 0, false);
	}
	if global.selectButtonPressed && selectedItem == 0 {
		selectedItem = global.inventory[selected];
		selected = 0;
		optionState = true;
		audio_play_sound(MenuSelect, 0, false);
	}
} else if menuType == "mail" && !optionState {
	if keyboard_check_pressed(vk_down) && selected < array_length(global.mailList) - 1 {
		selected++;
		audio_play_sound(MenuMove, 0, false);
	} else if keyboard_check_pressed(vk_up) && selected > 0 {
		selected--;
		audio_play_sound(MenuMove, 0, false);
	}
	if global.selectButtonPressed && selectedItem == 0 {
		selectedItem = global.mailList[selected];
		selected = 0;
		optionState = true;
		audio_play_sound(MenuSelect, 0, false);
	}
}

// When an item has been selected
if optionState {
	// I feel like I'm over engineering this.
	if keyboard_check_pressed(vk_right) && selected < 2 {
		selected++;
		audio_play_sound(MenuMove, 0, false);
	} else if keyboard_check_pressed(vk_left) && selected > 0 {
		selected--;
		audio_play_sound(MenuMove, 0, false);
	}
	soulXRight = boxRightX + 12 + (selected * 50);
	
	// Offset the soul when moving to "DROP"
	if selected == 2 {
		soulXRight += 10;
	}
	
	// Offset the soul when moving to "PIN"
	if menuType == "mail" && selected == 1 {
		soulXRight += 7;
	}
	soulYRight = boxTopY + 162;
		
	soulX = soulXRight;
	soulY = soulYRight;
	
	// Enter key has been released
	if global.selectButtonReleased {
		state = 1;
	}
	// Once it has been released press enter again so that it doesn't activate immediately
	if state == 1 {
		//show_debug_message(state);
		if global.selectButtonPressed {
			var inst = instance_create_layer(0, 0, "Instances", MenuSelectBoxObject);
			inst.itemSelected = selectedItem;
			if menuType == "item" {
				switch selected {
					case 0:
						inst.boxType = "USE";
						break;
					case 1:
						inst.boxType = "INFO";
						break;
					case 2:
						inst.boxType = "DROP";
						break;
				}
			} else {
				switch selected {
					case 0:
						inst.boxType = "READ";
						break;
					case 1:
						inst.boxType = "PIN";
						break;
					case 2:
						inst.boxType = "DROP";
						break;
				}
			}
			audio_play_sound(MenuSelect, 0, false);
			
			// Get rid of the sub menu.
			instance_destroy(MenuObject);
			instance_destroy(MenuNameObject);
			instance_destroy();
		}
	}
	
	// Exit out of the options.
	if global.deselectButtonPressed {
		state = 0;
		selectedItem = 0;
		optionState = false;
		audio_play_sound(MenuMove, 0, false);
	}
}
