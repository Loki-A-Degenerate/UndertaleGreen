if place_meeting(x, y, PlayerObject)
	{
		if instance_exists(FloweyHide) 
			{
				instance_activate_object(FloweyHide);
			}
		if instance_exists(WallSwitchObject)
			{
				WallSwitchObject.switchTouched = true;
			}
	}