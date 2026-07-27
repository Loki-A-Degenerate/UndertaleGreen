draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if selected == 0 {
	draw_set_font(UndertaleFontMenuMono);
	draw_set_colour(c_yellow);
	draw_text(room_width * 0.5, 176, "Begin Game");
	draw_set_colour(c_white);
	draw_text(room_width * 0.5, 195, "Config");
} else {
	draw_set_font(UndertaleFontMenuMono);
	draw_set_colour(c_white);
	draw_text(room_width * 0.5, 176, "Begin Game");
	draw_set_colour(c_yellow);
	draw_text(room_width * 0.5, 195, "Config");
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);