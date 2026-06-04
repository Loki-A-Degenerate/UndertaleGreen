draw_sprite_stretched(box, frame, boxLeftX, boxTopY, boxWidth, boxHeight);
draw_set_font(UndertaleFontMenuLarge);


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
