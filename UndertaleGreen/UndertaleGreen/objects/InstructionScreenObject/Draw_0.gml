draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(UndertaleFontMenuMono);
if selected == 0 {
draw_text_colour(room_width * 0.5, 195, "Begin Game", c_yellow, c_yellow, c_yellow, c_yellow, 1);
draw_text_colour(room_width * 0.5, 176, "Config", c_white, c_white, c_white, c_white, 1);
} else {
	draw_text_colour(room_width * 0.5, 176, "Begin Game", c_white, c_white, c_white, c_white, 1);
	draw_text_colour(room_width * 0.5, 195, "Config", c_yellow, c_yellow, c_yellow, c_yellow, 1);
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);