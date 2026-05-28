draw_sprite_stretched(box, frame, boxLeftX, boxTopY, boxWidth, boxHeight);

draw_text(textFirstX, textFirstY, text[0]);
draw_text(textLastX, textFirstY, text[1]);
draw_text(textFirstX, textLastY, text[2]);
draw_text(textLastX, textLastY, text[3]);

draw_sprite(soul, 0, textFirstX, textFirstY);