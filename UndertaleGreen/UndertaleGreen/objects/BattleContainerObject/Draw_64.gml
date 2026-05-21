if !BattleBoxObject.battleStart
{
	soulXLeft = 24 + (selected * 78);
	soulYLeft = 225;

	soulX = soulXLeft;
	soulY = soulYLeft;
	
	draw_sprite(soul, -1, soulX, soulY);	
}