// Player items/stats/cell menu box
draw_sprite_stretched(box, frame, boxLeftX, boxBotY, boxLeftW, boxSelectH);

draw_set_font(UndertaleFontMenuMono);
draw_text(boxLeftX + 26, boxBotY + 10, "ITEM");
draw_text(boxLeftX + 26, boxBotY + 28, "STAT");
draw_text(boxLeftX + 26, boxBotY + 46, "CELL"); 


// Move the menu soul
if submenu == "select"
	{
		soulXLeft = boxLeftX + 16;
		soulYLeft = boxBotY + 18 + (selected * 18);
		
		soulX = soulXLeft;
		soulY = soulYLeft;
		
		draw_sprite(soul, frame, soulX, soulY);	
	}
