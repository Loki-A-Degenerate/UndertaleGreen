draw_sprite_stretched(box, frame, boxLeftX, boxTopY, boxWidth, boxHeight);

draw_set_font(UndertaleFontMenu);
if saving {
	draw_set_colour(c_yellow);
	draw_text(boxLeftX + 30, boxTopY + 57, "File Saved");
	draw_text(boxLeftX + 140, boxTopY + 12, clock);
} else {
	draw_set_colour(c_white);
	draw_text(boxLeftX + 30, boxTopY + 57, "Save");
	draw_text(boxLeftX + 142, boxTopY + 57, "Return");
	draw_sprite(soul, frame, boxLeftX + 19 + (selected * 112), boxTopY + 65);
	draw_text(boxLeftX + 140, boxTopY + 12, TimeStringScript(prevClock));
}
draw_text(boxLeftX + 20, boxTopY + 12, name);
draw_text(boxLeftX + 90, boxTopY + 12, "LV " + string(lv));

var localRoomName = "";
// Space out name by capital letters in CamelCase
for (var i = 1; i <= string_length(location); i++) {
	var _char = string_char_at(location, i);
	if (_char == string_upper(_char) && _char != string_lower(_char) && i > 1) {
        localRoomName += " ";
    }
    localRoomName += _char;
}
draw_text(boxLeftX + 20, boxTopY + 32, region + " - " + localRoomName);