// Redo this shit oh my god

if image_index < 3 
{
	if global.selectButtonPressed
	{
		image_index++;
	}
}
else if image_index = 3
{
	if global.selectButtonPressed
	{
		//var inst = instance_create_depth(1, 1, -9999, WhiteTransitionObject);
		//inst.duration = audio_sound_length(PreIntroCymbal);
		var inst = instance_create_depth(1, 1, -9999, TransitionObject);
		inst.targetX = 136;
		inst.targetY = 123.5;
		inst.targetFace = FORWARD;
		inst.targetRoom = FlowerBed;	
		var inst2 = instance_create_depth(1, 1, -9999, MenuShake);
		inst2.shakeDuration = audio_sound_length(PreIntroCymbal);
		if !audio_is_playing(PreIntroCymbal) 
		{
			audio_play_sound(PreIntroCymbal, 0, false);
		}
	}
	else if keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)
	{
		image_index = 4;
	}
}
else if image_index = 4 
{
	if global.selectButtonPressed
	{
		room_goto(ConfigMenu);
	}
	else if keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)
	{
		image_index = 3;
	}
}