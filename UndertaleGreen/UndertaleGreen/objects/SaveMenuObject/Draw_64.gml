draw_sprite_stretched(box, frame, boxLeftX, boxTopY, boxWidth, boxHeight);

draw_set_font(UndertaleFontMenu);
if saving
{
	draw_set_colour(c_yellow);
	draw_text(boxLeftX + 30, boxTopY + 57, "File Saved");
}
else
{
	draw_set_colour(c_white);
	draw_text(boxLeftX + 30, boxTopY + 57, "Save");
	draw_text(boxLeftX + 142, boxTopY + 57, "Return");
	draw_sprite(soul, frame, boxLeftX + 19 + (selected * 112), boxTopY + 65);
	
}
draw_text(boxLeftX + 20, boxTopY + 12, name);
draw_text(boxLeftX + 90, boxTopY + 12, "LV " + string(lv));
draw_text(boxLeftX + 140, boxTopY + 12, clock);
draw_text(boxLeftX + 20, boxTopY + 32, region + " - " + location);