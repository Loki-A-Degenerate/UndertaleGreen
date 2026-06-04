rightKey = keyboard_check_pressed(vk_right);
leftKey = keyboard_check_pressed(vk_left);
downKey = keyboard_check_pressed(vk_down);
upKey = keyboard_check_pressed(vk_up);

switch subMenu {
	case "Fight":
		break;
	case "Act":
		break;
	case "Item":
		break;
	case "Mercy":
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
		break;
}

soulX = 72 + (selectedX * 240);
soulY = 286 + (selectedY * 32);

if global.selectButtonPressed {
	audio_play_sound(MenuSelect, 0, false);
	switch subMenu {
		case "Fight":
			break;
		case "Act":
			break;
		case "Item":
			break;
		case "Mercy":
			if selectedY == 0 {
				
			} else {
				fleeing = true;
			}
			break;
	}
}

switch fleeMessageChance {
	case 0:
		fleeMessages = "* Escaped...";
		break;
	case 1:
		fleeMessages = "* Don't slow me down.";
		break;
	case 2:
		fleeMessages = "* I'm outta here.";
		break;
}
show_debug_message(instance_exists(SoulFleeObject));
if fleeing {
	if !instance_exists(SoulFleeObject) {
		instance_create_layer(soulX, soulY, "Instances", SoulFleeObject);
		audio_play_sound(SoulEscape, 0, false);
	}
}