// Submenus
switch selected	
	{
		case 0:
			if keyboard_check_pressed(vk_enter)
				{
					submenu = "item";
					audio_play_sound(MenuSelect, 0, false);
				}
			break;
		case 1:
			if keyboard_check_pressed(vk_enter)
				{
					submenu = "stat";
					audio_play_sound(MenuSelect, 0, false);
				}
			break;
		case 2:
			if keyboard_check_pressed(vk_enter)
				{
					submenu = "cell";
					audio_play_sound(MenuSelect, 0, false);
				}
			break;
	}

if submenu != "select" 
	{
			
	}

// Change what you selected if you're in the main menu.
if submenu == "select" && keyboard_check_pressed(vk_down) && selected < 2
	{
		selected++;
		audio_play_sound(MenuMove, 0, false);
	}
else if submenu == "select" && keyboard_check_pressed(vk_up) && selected > 0
	{
		selected--;
		audio_play_sound(MenuMove, 0, false);
	}