draw_sprite_stretched(box, frame, boxLeftX, boxTopY, boxWidth, boxHeight);

draw_set_font(font);
var visibleText = string_copy(text[page], 1, floor(textIndex));
draw_text(boxLeftX + textMargin - asterickSpace, boxTopY + textSpaceY, "*");
draw_text_ext(boxLeftX + textMargin, boxTopY + textSpaceY, visibleText, 18, textWidth);