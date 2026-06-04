event_inherited();

if !fleeing {
	draw_sprite(soul, 0, soulX, soulY);
} else {
	spareable = false;
	text[0] = fleeMessages;
	text[1] = "";
}

if spareable {
	draw_set_colour(c_yellow);
	draw_text(textFirstX, textFirstY, text[0]);
	draw_set_colour(c_white);
	draw_text(textFirstX, textLastY, text[1]);
} else {
	draw_set_colour(c_white);
	draw_text(textFirstX, textFirstY, text[0]);
	draw_text(textFirstX, textLastY, text[1]);
}
