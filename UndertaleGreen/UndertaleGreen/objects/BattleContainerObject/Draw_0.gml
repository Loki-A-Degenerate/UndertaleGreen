draw_set_colour(c_white);

if !instance_exists(BattleSubMenuObject) && !instance_exists(BattleArenaObject){
	soulXLeft = elementsLeftX + 16 + (selected * buttonSpacing);
	soulYLeft = 455;

	soulX = soulXLeft;
	soulY = soulYLeft;
	
	draw_sprite(soul, -1, soulX, soulY);	
}

draw_set_font(UndertaleMarsFont);
draw_text(bottomTextX, bottomTextY, global.playerName + "   LV " + string(global.lv));
draw_sprite(HPWordSprite, 0, HPWordX, HPWordY);
draw_sprite_stretched(HPEmptySprite, 0, HPBoxX, HPBoxY, maxHP * 1.25, 21);
draw_sprite_stretched(HPFullSprite, 0, HPBoxX, HPBoxY, global.hp * 1.25, 21);
draw_text(HPBoxX + maxHP * 1.25 + 15, bottomTextY, string(global.hp) + " / " + string(maxHP));