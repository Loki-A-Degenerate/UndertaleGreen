// Player name and stat menu
draw_sprite_stretched(box, frame, boxLeftX, boxStatMiniY, boxLeftW, boxStatMiniH);

draw_set_halign(fa_left);
draw_set_colour(c_white);

draw_set_font(UndertaleFontMenuMono);
draw_text(boxLeftX + 8, boxStatMiniY + 5, name);

draw_set_font(UndertaleSmallFont);
draw_text(boxLeftX + 8, boxStatMiniY + 22, "LV");
draw_text(boxLeftX + 26, boxStatMiniY + 22, lv);

draw_text(boxLeftX + 8, boxStatMiniY + 31, "HP");
draw_text(boxLeftX + 26, boxStatMiniY + 31, string(hp) + "/" + string(hp_max));

draw_text(boxLeftX + 8, boxStatMiniY + 40, "$");
draw_text(boxLeftX + 26, boxStatMiniY + 40, money); 