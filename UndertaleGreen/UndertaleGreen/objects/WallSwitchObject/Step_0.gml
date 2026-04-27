var solutionCount = 0;
var correctPressed = 0;

if (switchFlipped) 
	{
		image_index = 1;
	}
else 
	{
		image_index = 0;
	}

with (ButtonObject) 
	{
		if (puzzleSolution) 
			{
				solutionCount++;
				if (buttonPressed) 
					{
						correctPressed++;
					}
			}	
	}

if (correctPressed == solutionCount && switchTouched) 
	{
		if (keyboard_check(vk_enter) || keyboard_check(ord("Z")))
			{
				switchFlipped = true;
			}
	}