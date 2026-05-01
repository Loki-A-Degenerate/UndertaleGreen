// decay
if shakeTime < shakeDuration
	{
		shakeTime += 1/game_get_speed(gamespeed_fps);
		
		// random offset
		shakeX = random_range(-shakeIntensity, shakeIntensity);
		shakeY = random_range(-shakeIntensity, shakeIntensity);
		show_debug_message(shakeDuration);
	}
else 
	{
		shakeX = 0;
		shakeY = 0;
	}
