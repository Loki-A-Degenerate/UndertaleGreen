// Inherit the parent event
event_inherited();

draw_text(31, 170, "*");

if boxType == "DROP" && itemSelected.canDrop
{
	if textIndex >= textLength[page] && page == 0
	{
		draw_text(73, 210, "Yes");
		draw_text(229, 210, "No");	
		
		if selected < 1 && keyboard_check_pressed(vk_right)
		{
			selected++;
			audio_play_sound(MenuMove, 0, false);
		}
		else if selected > 0 && keyboard_check_pressed(vk_left)
		{
			selected--;
			audio_play_sound(MenuMove, 0, false);
		}
	
		draw_sprite(soul, frame, 64 + (selected * 156), 218);
	}
}