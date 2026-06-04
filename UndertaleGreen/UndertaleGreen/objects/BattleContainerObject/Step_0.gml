with BattleTransitionObject {
	instance_destroy();
}

if !instance_exists(BattleSubMenuObject) {
	
	// Big text box for the combat.
	if !instance_exists(BattleBoxIntroObject) {
		with instance_create_layer(0, 0, "Instances", BattleBoxIntroObject) {
			TextScript("Oh wow, it's a battle!");
		}
	}
	
	// Move Soul
	if keyboard_check_pressed(vk_left) {
		selected--;
		audio_play_sound(MenuMove, 0, false);
	} else if keyboard_check_pressed(vk_right) {
		selected++;
		audio_play_sound(MenuMove, 0, false);
	}
	
	// Pressing enter on the battle buttons
	switch selected {
		case 0: // Fight button
			if global.selectButtonPressed {
				audio_play_sound(MenuSelect, 0, false);
				with FightButtonObject {
					createFightMenu();
				}
			}
			break;
		case 1: // Act button
			if global.selectButtonPressed {
				audio_play_sound(MenuSelect, 0, false);
				with ActButtonObject {
					createActMenu();
				}
			}
			break;
		case 2: // Item button
			if global.selectButtonPressed {
				audio_play_sound(MenuSelect, 0, false);
				with ItemButtonObject {
					createItemMenu();
				}
			}
			break;
		case 3: // Mercy button
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