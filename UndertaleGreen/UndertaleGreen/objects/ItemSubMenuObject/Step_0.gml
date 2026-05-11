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
		MenuObject.submenu = "item-options";
	}


// Press enter to select an item
if selectedItem != 0
	{
		var state = 0;
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
		if selected == 2
			{
				soulXRight += 10;
			}
		soulYRight = boxTopY + 162;
		
		soulX = soulXRight;
		soulY = soulYRight;
		
		if keyboard_check_pressed(vk_enter)
			{
				switch state 
					{
						case 0:
							state = 1;
							break;
						case 1:
							var inst = instance_create_layer(0, 0, "Instances", MenuSelectBoxObject);
							break;
							
					}
			}
		
	}