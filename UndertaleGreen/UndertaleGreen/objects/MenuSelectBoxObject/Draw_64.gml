// Inherit the parent event
event_inherited();

draw_text(31, 174, "*");

if boxType == "DROP"
{
	draw_text(73, 214, "Yes");
	draw_text(229, 214, "No");
	
	if selected < 1 && keyboard_check_pressed(vk_right)
	{
		selected++;
	}
	else if selected > 0 && keyboard_check_pressed(vk_left)
	{
		selected--;
	}
	
	draw_sprite(soul, frame, 64 + (selected * 156), 214);
}