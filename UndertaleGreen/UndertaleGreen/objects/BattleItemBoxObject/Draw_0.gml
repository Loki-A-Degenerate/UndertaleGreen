draw_sprite_stretched(box, frame, boxLeftX, boxTopY, boxWidth, boxHeight);
draw_set_font(UndertaleFontMenuLarge);

draw_set_colour(c_white);


draw_text(textFirstX, textFirstY, text[0]);
draw_text(textLastX, textFirstY, text[1]);
draw_text(textFirstX, textLastY, text[2]);
draw_text(textLastX, textLastY, text[3]);