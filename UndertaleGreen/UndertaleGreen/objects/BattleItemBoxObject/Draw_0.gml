event_inherited();
draw_sprite(soul, 0, soulX, soulY);

if array_length(pages) <= 0 {
	exit;
}

for (var j = 0; j < array_length(pages[curPage]); j++) {
	if pages[curPage][j] == undefined {
		text[j] = "";
		break;
	} 
	if BattleInitialiserObject.serious {
		text[j] = pages[curPage][j].nameSerious;
	} else {
		text[j] = pages[curPage][j].nameShort;
	}
}

draw_text(textFirstX, textFirstY, text[0]);
draw_text(textLastX, textFirstY, text[1]);
draw_text(textFirstX, textLastY, text[2]);
draw_text(textLastX, textLastY, text[3]);
draw_text(textLastX, textLastY + 32, "   PAGE " + string(curPage + 1));

show_debug_message(array_length(pages));