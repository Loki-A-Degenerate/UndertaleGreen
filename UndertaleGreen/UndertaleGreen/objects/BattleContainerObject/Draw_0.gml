if !BattleBoxIntroObject.battleStart
{
	soulXLeft = elementsLeftX + 16 + (selected * buttonSpacing);
	soulYLeft = 455;

	soulX = soulXLeft;
	soulY = soulYLeft;
	
	draw_sprite(soul, -1, soulX, soulY);	
}

draw_set_font(UndertaleMarsFont);
draw_text(bottomTextX, bottomTextY, global.playerName + "   LV " + string(global.lv));
draw_sprite(HPWordSprite, 0, HPWordX, HPWordY);
draw_sprite(HPFullSprite, 0, 275, 400);
draw_text(314, bottomTextY, string(global.hp) + " / " + string(maxHP));