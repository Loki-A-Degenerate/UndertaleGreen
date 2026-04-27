if (keyboard_check(vk_f2) && keyboard_check(ord("D"))) 
	{
		DebugMode = true;
	}
	
if (DebugMode) 
	{
		if (keyboard_check(ord("F"))) 
			{
				PlayerObject.moveSpeed = 5;
			}
	}