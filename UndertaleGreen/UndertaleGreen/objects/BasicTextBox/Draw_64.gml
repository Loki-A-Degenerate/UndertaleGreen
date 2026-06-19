draw_sprite_stretched(box, frame, boxLeftX, boxTopY, boxWidth, boxHeight);

draw_set_colour(c_white);
draw_set_font(font);
var visibleText = string_copy(text[page], 1, floor(textIndex));
draw_text(boxLeftX + textMargin - asterickSpace, boxTopY + textSpaceY, "*");
draw_text_ext(boxLeftX + textMargin, boxTopY + textSpaceY, visibleText, textSpacing, textWidth);

// This is the most revolting code I have ever written.
// It writes an * per new line.
var newLine = string_pos("\n", visibleText);
if newLine > 0 {
	var asterPos = ((newLine * font_get_size(font)) div textWidth) + 1;
	draw_text(boxLeftX + textMargin - asterickSpace, boxTopY + textSpaceY + (textSpacing * asterPos), "*");
}