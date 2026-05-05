if place_meeting(x, y, PlayerObject)
	{
		instance_activate_object(FloweyHide);
		with WallSwitchSolutionObject
			{
				switchTouched = true;
			}
		with WallSwitchObject
			{
				switchTouched = true;
			}
	}