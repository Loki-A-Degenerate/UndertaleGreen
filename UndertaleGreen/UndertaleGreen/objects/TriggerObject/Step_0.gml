if place_meeting(x, y, PlayerObject)
	{
		instance_activate_object(FloweyHide);
		with (WallSwitchObject)
			{
				switchTouched = true;
			}
	}