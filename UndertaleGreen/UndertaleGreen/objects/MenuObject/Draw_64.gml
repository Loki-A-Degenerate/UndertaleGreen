// Player items/stats/cell menu box
draw_sprite_stretched(box, frame, boxLeftX, boxBotY, boxLeftW, boxSelectH);

draw_set_font(UndertaleFontMenuMono);
draw_text(boxLeftX + 26, boxBotY + 10, "ITEM");
draw_text(boxLeftX + 26, boxBotY + 28, "STAT");
draw_text(boxLeftX + 26, boxBotY + 46, "CELL"); 

// Getting an item's index, why doesn't gamemaker have a remove(item) function for arrays?
var index = -1;
for (var i = 0; i < array_length(global.inventory); i++) 
	{
		if global.inventory[i] == selectedItem
			{
				index = i;	
			}
	}
	
// Draw submenus
if submenu != "select" 
	{
		//draw_sprite_stretched(box, frame, boxRightX, boxTopY, boxRightW, boxRightH);
	}
 
//if selectedItem != 0
//	{
//		// I feel like I'm over engineering this.
//		if keyboard_check_pressed(vk_right) && selected < 2
//			{
//				selected++;
//			}
//		else if keyboard_check_pressed(vk_left) && selected > 0
//			{
//				selected--;
//			}
//		soulXRight = boxRightX + 12 + (selected * 50);
//		if selected == 2
//			{
//				soulXRight += 10;
//			}
//		soulYRight = boxTopY + 162;
		
//		soulX = soulXRight;
//		soulY = soulYRight;
		
//		switch selected
//			{
//				case 0:
//					var instUse = instance_create_depth(0, 0, -9999, MenuSelectBoxObject);
//					instUse.boxType = "USE";
//					instUse.itemSelected = selectedItem;
//					instance_destroy(MenuNameObject);
//					instance_destroy();
//					break;
//				case 1:
//					var instInfo = instance_create_depth(0, 0, -9999, MenuSelectBoxObject);
//					instInfo.boxType = "INFO";
//					instInfo.itemSelected = selectedItem;
//					instance_destroy(MenuNameObject);
//					instance_destroy();
//					break;
//				case 2:
//					var instDrop = instance_create_depth(0, 0, -9999, MenuSelectBoxObject);
//					instDrop.boxType = "DROP";
//					instDrop.itemSelected = selectedItem;
//					instance_destroy(MenuNameObject);
//					instance_destroy();
//					break;
//			}
			
//	}

// Stat menu
if submenu == "stat"
	{
		draw_text(boxRightX + 14, boxTopY + 16, "\"" + name + "\"");
		draw_text(boxRightX + 98, boxTopY + 16, "ss");
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

// What you selected in the main menu
switch selected	
	{
		case 0:
			if keyboard_check_pressed(vk_enter)
				{
					submenu = "item";
					audio_play_sound(MenuSelect, 0, false);
					instance_create_layer(0, 0, "Instances", ItemSubMenuObject);
				}
			if keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"))	
				{
					submenu = "select";
					audio_play_sound(MenuMove, 0, false);
					selected = 0;
					with (ItemSubMenuObject)
						{
							instance_destroy();
						}
				}
			break;
		case 1:
			if keyboard_check_pressed(vk_enter)
				{
					submenu = "stat";
					audio_play_sound(MenuSelect, 0, false);
				}
			if keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"))	
				{
					submenu = "select";	
					audio_play_sound(MenuMove, 0, false);
					selected = 0;
				}
			break;
		case 2:
			if keyboard_check_pressed(vk_enter)
				{
					submenu = "cell";
					audio_play_sound(MenuSelect, 0, false);
					selected = 0;
				}
			if keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"))	
				{
					submenu = "select";	
					audio_play_sound(MenuMove, 0, false);
					selected = 0;
				}
			break;
	}

// Move the menu soul
if submenu == "select"
	{
		soulXLeft = boxLeftX + 16;
		soulYLeft = boxBotY + 18 + (selected * 18);
		
		soulX = soulXLeft;
		soulY = soulYLeft;
		
		draw_sprite(soul, frame, soulX, soulY);	
	}

if submenu != "stat"
	{
		//draw_sprite(soul, frame, soulX, soulY);	
	}