if switchFlipped 
{
	image_index = 1;
}
else 
{
	image_index = 0;
}
	
if puzzleSolution 
{
	if switchTouched
	{
		if global.selectButtonPressed
		{
			self.switchFlipped = true;
			global.puzzleSolved[puzzleID] = true;
		}
	}
}
else
{
	if switchTouched
	{
		var state = 1;
		if global.selectButtonReleased
		{
			state = 0;
		}
		if global.selectButtonPressed && state == 0
		{
			with instance_create_layer(0, 0, "Instances", BasicTextBox)
			{
				TextScript("This switch doesn't even work...");
			}
			state = 1;
		}
	}
}

	
if switchFlipped && !prevSwitched
{
	audio_play_sound(customSound, 0, false);
}

prevSwitched = switchFlipped;