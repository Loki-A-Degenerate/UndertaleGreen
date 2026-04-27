if !buttonPressed
	{
		image_index = 0;
	}
else 
	{
		image_index = 1;
	}

if place_meeting(x, y, PlayerObject) 
	{
		buttonPressed = true;
	}