draw_set_colour(c_white);
draw_set_font(font);

if endOfText {
	draw_set_halign(fa_center);
	draw_text(room_width / 2, 300, "Continue");
	draw_text(room_width / 2, 348, "Retry");
	draw_sprite(soul, 0, room_width / 2 - 100, 316 + (selected * 48));
} else {
	var visibleText = string_copy(text[page], 1, floor(textIndex));
	draw_text_ext(boxLeftX + textMargin, boxTopY + textSpaceY, visibleText, textSpacing, textWidth);
}
