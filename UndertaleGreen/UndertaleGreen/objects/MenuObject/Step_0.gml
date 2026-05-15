// Submenus
switch selected	
	{
		case 0:
			if global.selectButtonPressed
				{
					submenu = "item";
					audio_play_sound(MenuSelect, 0, false);
				}
			break;
		case 1:
			if global.selectButtonPressed
				{
					submenu = "stats";
					audio_play_sound(MenuSelect, 0, false);
				}
			break;
		case 2:
			if global.selectButtonPressed
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

if global.deselectButtonPressed
{
	if submenu != "select"
	{
		if SubMenuObject.optionState == false
		{
			submenu = "select";
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