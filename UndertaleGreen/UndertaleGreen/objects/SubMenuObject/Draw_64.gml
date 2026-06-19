draw_sprite_stretched(box, frame, boxRightX, boxTopY, boxRightW, boxRightH);

switch menuType
{
	case "item":
		for (var i = 0; i < array_length(global.inventory); i++) 
		{
			if global.inventory[i] == undefined {
				break;
			}
			draw_text(boxRightX + 22, boxTopY + 14 + (i * 16), global.inventory[i].name);
		}
		//show_debug_message(global.inventory[0].itemName);
		draw_text(boxRightX + 22, boxTopY + 154, "USE");
		draw_text(boxRightX + 72, boxTopY + 154, "INFO");
		draw_text(boxRightX + 132, boxTopY + 154, "DROP");
		break;
	case "stats":
		draw_text(boxRightX + 16, boxTopY + 14, "''"+ name + "''");
		draw_text(boxRightX + 118, boxTopY + 14, "LV "+ string(lv));
		draw_text(boxRightX + 16, boxTopY + 36, "HP "+ string(global.hp)+ " / " + string(hpMax));
		draw_text(boxRightX + 16, boxTopY + 63, "AT "+string(at)+"("+string(weapon.at)+")");
		draw_text(boxRightX + 96, boxTopY + 63, "EXP "+string(ex));
		draw_text(boxRightX + 16, boxTopY + 79, "DF "+string(df)+"("+string(armour.df)+")");
		draw_text(boxRightX + 96, boxTopY + 79, "NEXT "+string(next));
		draw_text(boxRightX + 16, boxTopY + 103, "WEAPON: "+weapon.name);
		draw_text(boxRightX + 16, boxTopY + 119, "ARMOR: "+armour.name);
		draw_text(boxRightX + 16, boxTopY + 143, "FLAVOR: "+weapon.name);
		draw_text(boxRightX + 16, boxTopY + 159, "PATCH: "+weapon.name);
		draw_text(boxRightX + 16, boxTopY + 183, "GOLD: "+string(gold));
		break;
	case "mail":
		for (var i = 0; i < array_length(global.mailList); i++)
		{
			draw_text(boxRightX + 22, boxTopY + 14 + (i * 16), global.mailList[i].name);
		}
		draw_text(boxRightX + 22, boxTopY + 154, "READ");
		draw_text(boxRightX + 79, boxTopY + 154, "PIN");
		draw_text(boxRightX + 132, boxTopY + 154, "DROP");
		break;
}



if selectedItem == 0 
{
	soulXRight = boxRightX + 12;
	soulYRight = boxTopY + 22 + (selected * 16);
		
	soulX = soulXRight;
	soulY = soulYRight;	
}

if menuType != "stats"
{
	draw_sprite(soul, frame, soulX, soulY);	
}