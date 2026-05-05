if global.puzzleSolved[puzzleID] = false
	{
		show_debug_message("I am sure");
		if place_meeting(x, y, PlayerObject)
			{
				PlayerObject.moveSpeed = 0;
				show_debug_message("Hello player");
			}
	}
else
	{
		image_index = 1;
		PlayerObject.moveSpeed = 2;
	}