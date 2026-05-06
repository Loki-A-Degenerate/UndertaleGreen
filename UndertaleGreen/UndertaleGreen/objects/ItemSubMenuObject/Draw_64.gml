draw_sprite_stretched(box, frame, boxRightX, boxTopY, boxRightW, boxItemH);

for (var i = 0; i < array_length(global.inventory); i++) 
	{
		draw_text(boxRightX + 22, boxTopY + 14 + (i * 16), global.inventory[i].name);
	}
draw_text(boxRightX + 22, boxTopY + 154, "USE");
draw_text(boxRightX + 72, boxTopY + 154, "INFO");
draw_text(boxRightX + 132, boxTopY + 154, "DROP");

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
	}

if selectedItem != 0
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
		if selected == 2
			{
				soulXRight += 10;
			}
		soulYRight = boxTopY + 162;
		
		soulX = soulXRight;
		soulY = soulYRight;
		
	}

if selectedItem == 0 
	{
		soulXRight = boxRightX + 12;
		soulYRight = boxTopY + 22 + (selected * 16);
		
		soulX = soulXRight;
		soulY = soulYRight;	
	}

draw_sprite(soul, frame, soulX, soulY);	