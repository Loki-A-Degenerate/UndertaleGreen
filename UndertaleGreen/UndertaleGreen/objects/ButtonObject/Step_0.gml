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

	
if buttonPressed && !prevPressed
	{
		audio_play_sound(ButtonPress, 0, false);
	}
	
prevPressed = buttonPressed;