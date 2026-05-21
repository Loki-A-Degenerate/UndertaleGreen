var solutionCount = 0;
var correctPressed = 0;

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
	with ButtonObject 
	{
		if buttonPressed
		{
			if puzzleSolution 
			{
				correctPressed++;
				solutionCount++;
			}
			else
			{
				correctPressed--;
			}
		}
		
	}
}


if correctPressed == solutionCount && switchTouched 
	{
		if keyboard_check(vk_enter) || keyboard_check(ord("Z"))
			{
				switchFlipped = true;
				global.puzzleSolved[puzzleID] = true;
			}
	}
	
if switchFlipped && !prevSwitched
	{
		audio_play_sound(customSound, 0, false);
	}

prevSwitched = switchFlipped;