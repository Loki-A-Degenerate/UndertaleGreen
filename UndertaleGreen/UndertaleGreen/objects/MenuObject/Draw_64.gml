draw_sprite_stretched(box, frame, boxLeftX, boxStatMiniY, boxLeftW, boxStatMiniH);

draw_set_halign(fa_left);
draw_set_colour(c_white);

draw_set_font(UndertaleFontMenu);
draw_text(boxLeftX + 8, boxStatMiniY + 5, name);

draw_set_font(UndertaleSmallFont);
draw_text(boxLeftX + 8, boxStatMiniY + 22, "LV");
draw_text(boxLeftX + 26, boxStatMiniY + 22, lv);

draw_text(boxLeftX + 8, boxStatMiniY + 31, "HP");
draw_text(boxLeftX + 26, boxStatMiniY + 31, string(hp) + "/" + string(hp_max));

draw_text(boxLeftX + 8, boxStatMiniY + 40, "$");
draw_text(boxLeftX + 26, boxStatMiniY + 40, money); 

draw_sprite_stretched(box, frame, boxLeftX, boxBotY, boxLeftW, boxSelectH);

draw_set_font(UndertaleFontMenu);
draw_text(boxLeftX + 26, boxBotY + 10, "ITEM");
draw_text(boxLeftX + 26, boxBotY + 28, "STAT");
draw_text(boxLeftX + 26, boxBotY + 46, "CELL");

switch submenu
	{
		case "item":
			boxRightH = boxItemH;
		case "stat":
			boxRightH = boxStatH;
		case "cell":
			boxRightH = boxCellH;
	}
	
if submenu != "select" 
	{
		draw_sprite_stretched(box, frame, boxRightH, boxTopY, boxRightW, boxRightH);	
	}

if submenu == "item" || submenu == "item_options"
	{
		show_debug_message("huh?");
		for (var i = 0; i < array_length(global.inventory); i++) 
			{
				draw_text(boxRightX + 22, boxTopY + 14 + (i * 16), global.inventory[i].name);
			}
		draw_text(boxRightX + 22, boxTopY + 154, "USE");
		draw_text(boxRightX + 72, boxTopY + 154, "INFO");
		draw_text(boxRightX + 132, boxTopY + 154, "DROP");
	}

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
	
switch selected	
	{
		case 0:
			if keyboard_check_pressed(vk_enter)
				{
					show_debug_message(submenu);
					submenu = "item";
					audio_play_sound(MenuSelect, 0, false);
				}
			if keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"))	
				{
					submenu = "select";
					audio_play_sound(MenuMove, 0, false);
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
				}
			break;
		case 2:
			if keyboard_check_pressed(vk_enter)
				{
					submenu = "cell";
					audio_play_sound(MenuSelect, 0, false);
				}
			if keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"))	
				{
					submenu = "select";	
					audio_play_sound(MenuMove, 0, false);
				}
			break;
	}

if submenu == "select"
	{
		soulXLeft = boxLeftX + 16;
		soulYLeft = boxBotY + 18 + (selected * 18);
		
		soulX = soulXLeft;
		soulY = soulYLeft;
	}

draw_sprite(soul, frame, soulX, soulY);
