draw_sprite_stretched(box, frame, boxLeftX, boxTopY, boxWidth, boxHeight);

draw_set_font(UndertaleFontMenu);
var visibleText = string_copy(text[page], 1, floor(textIndex));
draw_text(boxLeftX + textMargin - 17, boxTopY + 10, "*");
draw_text_ext(boxLeftX + textMargin, boxTopY + 10, visibleText, 18, textWidth);