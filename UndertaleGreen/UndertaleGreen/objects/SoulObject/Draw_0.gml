if BattleArenaObject.shieldMode {
	//draw_sprite(fryingPan, -1, x + panPosX, y + panPosY);
	draw_set_colour(c_gray);
	draw_circle(x, y, circleRad, true);
	//draw_sprite_ext(fryingPan, -1, x + panPosX, y + panPosY, 1, 1, 90, c_white, 1);
}

draw_self();

//show_debug_message(x + panPosX);