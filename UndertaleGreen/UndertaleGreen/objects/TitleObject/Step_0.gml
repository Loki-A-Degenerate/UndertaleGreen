if image_index = 2 
	{
		if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))
		{
			image_index = 3;
		}
	}
else if image_index = 3
	{
		if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")) 
			{
				var inst = instance_create_depth(1, 1, -9999, TransitionObject);
				inst.targetX = 136;
				inst.targetY = 123.5;
				inst.targetFace = FORWARD;
				inst.targetRoom = FlowerBed;		
			}
		else if keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)
			{
				image_index = 4;
			}
	}
else if image_index = 4 
	{
		if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")) 
			{
				 room_goto(ConfigMenu);
			}
		else if keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)
			{
				image_index = 3;
			}
	}