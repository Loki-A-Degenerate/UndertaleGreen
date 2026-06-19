with BattleTransitionObject {
	instance_destroy();
}

if !instance_exists(BattleSubMenuObject) && !instance_exists(BattleArenaObject) {
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
	// Select the battle buttons.
	if (global.selectButtonPressed && !global.inputConsumed) {
	    global.inputConsumed = true;
	    switch (selected) {
	        case 0: // Fight button
	            audio_play_sound(MenuSelect, 0, false);
	            with (FightButtonObject) createFightMenu();
	        break;
	        case 1: // Act button
	            audio_play_sound(MenuSelect, 0, false);
	            with (ActButtonObject) createActMenu();
	        break;
	        case 2: // Item button
	            audio_play_sound(MenuSelect, 0, false);
	            with (ItemButtonObject) createItemMenu();
	        break;
	        case 3: // Mercy button
	            audio_play_sound(MenuSelect, 0, false);
	            with (MercyButtonObject) createMercyMenu();
	        break;
	    }
	}
	global.inputConsumed = false;
} else {
	global.inputConsumed = true;
}

// Loop back around
if !instance_exists(BattleArenaObject) {
	if selected > 3 {
		selected = 0;
	}
	if selected < 0 {
		selected = 3;
	}
} else {
	selected = -1;
}

// Make the buttons yellow when selected
for (var i = 0; i < array_length(battleButtons); i++) {
	battleButtons[i].image_index = (i == selected);
}

if global.hp <= 0 {
	//instance_create_layer()
}

instance_destroy(SoulBattleTransObject);