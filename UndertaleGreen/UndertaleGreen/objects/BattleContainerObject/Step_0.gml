with BattleTransitionObject {
	instance_destroy();
}
// Big text box for the combat.
if !instance_exists(BattleBoxIntroObject) && !instance_exists(BattleMercyBoxObject) {
	with instance_create_layer(0, 0, "Instances", BattleBoxIntroObject) {
		TextScript("Oh wow, it's a battle!");
	}
}

// Move soul
if !instance_exists(BattleMercyBoxObject) {
	if keyboard_check_pressed(vk_left) {
		selected--;
		audio_play_sound(MenuMove, 0, false);
	} else if keyboard_check_pressed(vk_right) {
		selected++;
		audio_play_sound(MenuMove, 0, false);
	}
	
	switch selected {
		case 0:
			break;
		case 1:
			break;
		case 2:
			break;
		case 3:
			if global.selectButtonPressed {
				audio_play_sound(MenuSelect, 0, false);
				with MercyButtonObject {
					createMercyMenu();
				}
			}
			break;
	}
}

// Loop back around
if selected > 3 {
	selected = 0;
}
if selected < 0 {
	selected = 3;
}

// Make the buttons yellow when selected
for (var i = 0; i < array_length(battleButtons); i++) {
	battleButtons[i].image_index = (i == selected);
}

if global.hp <= 0 {
	//instance_create_layer()
}

instance_destroy(SoulBattleTransObject);