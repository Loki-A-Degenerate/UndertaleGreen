if place_meeting(x, y, PlayerObject)
{
	instance_activate_object(FloweyHide);
	
	var switchType1 = instance_place(x, y, WallSwitchObject);

    if (switchType1 != noone)
    {
        switchType1.switchTouched = true;
    }

    var switchType2 = instance_place(x, y, WallSwitchSolutionObject);

    if (switchType2 != noone)
    {
        switchType2.switchTouched = true;
    }
}