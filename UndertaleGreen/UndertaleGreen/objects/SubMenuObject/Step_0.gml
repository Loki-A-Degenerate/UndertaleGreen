// What type of submenu to draw and the heights of the menus
switch menuType
{
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

if menuType == "item"
{
	if keyboard_check_pressed(vk_down) && selected < array_length(global.inventory) - 1
	{
		selected++;
		audio_play_sound(MenuMove, 0, false);
	}
	else if  keyboard_check_pressed(vk_up) && selected > 0
	{
		selected--;
		audio_play_sound(MenuMove, 0, false);
	}
	if keyboard_check_pressed(vk_enter)	&& selectedItem == 0
	{
		selectedItem = global.inventory[selected];
		selected = 0;
		optionState = true;
	}
}
else if menuType == "mail"
{
	if keyboard_check_pressed(vk_down) && selected < array_length(global.mailList) - 1
	{
		selected++;
		audio_play_sound(MenuMove, 0, false);
	}
	else if  keyboard_check_pressed(vk_up) && selected > 0
	{
		selected--;
		audio_play_sound(MenuMove, 0, false);
	}
	if keyboard_check_pressed(vk_enter)	&& selectedItem == 0
	{
		selectedItem = global.mailList[selected];
		selected = 0;
		optionState = true;
	}
}

// Press enter to select an item
if optionState
{
	// I feel like I'm over engineering this.
	if keyboard_check_pressed(vk_right) && selected < 2
	{
		selected++;
	}
	else if keyboard_check_pressed(vk_left) && selected > 0
	{
		selected--;
	}
	soulXRight = boxRightX + 12 + (selected * 50);
	
	// Offset the soul when moving to "DROP"
	if selected == 2
	{
		soulXRight += 10;
	}
	
	// Offset the soul when moving to "PIN"
	if menuType == "mail" && selected == 1
	{
		soulXRight += 7;
	}
	soulYRight = boxTopY + 162;
		
	soulX = soulXRight;
	soulY = soulYRight;
		
	if keyboard_check_released(vk_enter) || keyboard_check_released(ord("Z"))
	{
		state = 1;
	}
	if state == 1
	{
		if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))
		{
			var inst = instance_create_layer(0, 0, "Instances", MenuSelectBoxObject);
			inst.itemSelected = selectedItem;
			if menuType == "item"
			{
				switch selected
				{
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
			}
			else
			{
				switch selected
				{
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
			instance_destroy(MenuObject);
			instance_destroy(MenuNameObject);
			instance_destroy();
		}
	}
	
	// Exit out of the options.
	if keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"))
	{
		selectedItem = 0;
		optionState = false;
	}
}