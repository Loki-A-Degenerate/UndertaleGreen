if image_index = 2 
	{
		if keyboard_check(vk_enter) || keyboard_check(ord("Z"))
		{
			show_debug_message("Well I suck");
			room_goto(FlowerBed);
		}
	}