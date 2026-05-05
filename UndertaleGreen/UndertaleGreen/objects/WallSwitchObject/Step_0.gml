var correctFlipped = 0;

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
				if keyboard_check(vk_enter) || keyboard_check(ord("Z"))
					{
						self.switchFlipped = true;
						correctFlipped++;
					}
			}
	}

if correctFlipped == 2
	{
		show_debug_message("we are here");
		global.puzzleSolved[puzzleID] = true;
	}

	
if switchFlipped && !prevSwitched
	{
		audio_play_sound(customSound, 0, false);
	}

prevSwitched = switchFlipped;