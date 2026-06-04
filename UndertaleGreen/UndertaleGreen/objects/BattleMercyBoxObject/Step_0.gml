downKey = keyboard_check_pressed(vk_down);
upKey = keyboard_check_pressed(vk_up);


if upKey {
	selected--;
	if selected < 0 {
		selected = 1;
	}
	audio_play_sound(MenuMove, 0, false);
} else if downKey {
	selected++;
	if selected > 1 {
		selected = 0;
	}
	audio_play_sound(MenuMove, 0, false);
}


soulX = 72;
soulY = 286 + (selected * 32);

if global.selectButtonPressed {
	audio_play_sound(MenuSelect, 0, false);
	if selected == 0 {
				
	} else {
		fleeing = true;
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

if fleeing {
	if !instance_exists(SoulFleeObject) {
		instance_create_layer(soulX, soulY, "Instances", SoulFleeObject);
		audio_play_sound(SoulEscape, 0, false);
	}
}

if global.deselectButtonPressed {
	instance_destroy();
}