var solutionCount = 0;

with (ButtonObject) 
	{
		if(puzzleSolution) 
			{
				solutionCount++;
			}
	}

show_debug_message(solutionCount);