draw_sprite_stretched(box, frame, boxLeftX, boxTopY, boxWidth, boxHeight);

draw_set_font(UndertaleFontMenu);
var visibleText = string_copy(text, 1, floor(textIndex));
draw_text(48, 174, visibleText);