// Getting an item's index, why doesn't gamemaker have a remove(item) function for arrays?
var index = -1;
for (var i = 0; i < array_length(global.inventory); i++) 
	{
		if global.inventory[i] == selectedItem
			{
				index = i;	
			}
	}

draw_sprite_stretched(box, frame, boxRightX, boxTopY, boxRightW, boxItemH);

for (var i = 0; i < array_length(global.inventory); i++) 
	{
		draw_text(boxRightX + 22, boxTopY + 14 + (i * 16), global.inventory[i].name);
	}
draw_text(boxRightX + 22, boxTopY + 154, "USE");
draw_text(boxRightX + 72, boxTopY + 154, "INFO");
draw_text(boxRightX + 132, boxTopY + 154, "DROP");



if selectedItem == 0 
	{
		soulXRight = boxRightX + 12;
		soulYRight = boxTopY + 22 + (selected * 16);
		
		soulX = soulXRight;
		soulY = soulYRight;	
	}

draw_sprite(soul, frame, soulX, soulY);	