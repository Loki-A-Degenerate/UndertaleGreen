event_inherited();

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


soulX = 72;
soulY = 286 + (selectedY * 32);

if global.selectButtonPressed {
	audio_play_sound(MenuSelect, 0, false);
	if selectedY == 0 {
				
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