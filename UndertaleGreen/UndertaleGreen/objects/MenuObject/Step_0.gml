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
					submenu = "stats";
					audio_play_sound(MenuSelect, 0, false);
				}
			break;
		case 2:
			if keyboard_check_pressed(vk_enter)
				{
					submenu = "mail";
					audio_play_sound(MenuSelect, 0, false);
				}
			break;
	}

if !instance_exists(SubMenuObject) && submenu != "select"
{
    instance_create_layer(0, 0, "Instances", SubMenuObject);
	
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

if keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"))
{
	if submenu != "select"
	{
		if SubMenuObject.optionState == false
		{
			submenu = "select";
			show_debug_message("we're here?");
			instance_destroy(SubMenuObject);
			audio_play_sound(MenuMove, 0, false);
		}
	}
	else
	{
		instance_destroy(MenuNameObject);
		instance_destroy();
	}
}