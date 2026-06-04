event_inherited();
draw_sprite(soul, 0, soulX, soulY);

for (var i = 0; i < 4; i++) {
	if (global.inventory[i] == noone) {
		text[i] = "";
	} else {
		text[i] = global.inventory[i].name;
	}
}

draw_text(textFirstX, textFirstY, text[0]);
draw_text(textLastX, textFirstY, text[1]);
draw_text(textFirstX, textLastY, text[2]);
draw_text(textLastX, textLastY, text[3]);
draw_text(textLastX, textLastY + 32, "   PAGE " + string(curPage));