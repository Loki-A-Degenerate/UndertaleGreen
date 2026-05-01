fade += fadeSpeed;
if timer < duration
	{
		timer += 1 / game_get_speed(gamespeed_fps);
		
		var t = timer / duration;
		fade = clamp(t, 0, 1);
	}
else
	{
		fade = 1;
		
		if targetRoom != 0
			{
				room_goto(targetRoom);
				PlayerObject.x = targetX;
				PlayerObject.y = targetY;
				PlayerObject.face = targetFace;
			}
	}