var centX = room_width / 2;
var centY = room_height / 2;

draw_sprite(saveScreen, -1, centX, centY);
draw_set_font(UndertaleFontMenu);

// Getting the room name
var roomName = room_get_name(localRoom);
var localRoomName = "";
// Space out name by capital letters in CamelCase
for (var i = 1; i <= string_length(roomName); i++) {
	var _char = string_char_at(roomName, i);
	if (_char == string_upper(_char) && _char != string_lower(_char) && i > 1) {
        localRoomName += " ";
    }
    localRoomName += _char;
}
// Top text
draw_set_halign(fa_left);
draw_text(leftTextHAlign, topTextVAlign, name);
draw_text(leftTextHAlign, topTextVAlign + 20, locale + " - " + localRoomName);
draw_set_halign(fa_center);
draw_text(centX, topTextVAlign, "LV"+string(lv));
draw_set_halign(fa_right);
draw_text(room_width-leftTextHAlign, topTextVAlign, TimeStringScript(time));

draw_set_halign(fa_left);
switch selected {
	case 0:
		draw_text_colour(80, 70, "Continue", c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_colour(180, 70, "Reset", c_white, c_white, c_white, c_white, 1);
		draw_set_halign(fa_center);
		draw_text_colour(centX, 90, "Config", c_white, c_white, c_white, c_white, 1);
		break;
	case 1:
		draw_text_colour(80, 70, "Continue", c_white, c_white, c_white, c_white, 1);
		draw_text_colour(180, 70, "Reset", c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_set_halign(fa_center);
		draw_text_colour(centX, 90, "Config", c_white, c_white, c_white, c_white, 1);
		break;
	case 2:
		draw_text_colour(80, 70, "Continue", c_white, c_white, c_white, c_white, 1);
		draw_text_colour(180, 70, "Reset", c_white, c_white, c_white, c_white, 1);
		draw_set_halign(fa_center);
		draw_text_colour(centX, 90, "Config", c_yellow, c_yellow, c_yellow, c_yellow, 1);
		break;
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);