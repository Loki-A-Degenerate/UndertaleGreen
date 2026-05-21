if distance_to_object(PlayerObject) < 4 && !instance_exists(SaveMenuObject)
{
	if global.selectButtonPressed
	{
		//SavingScript();
		//instance_create_layer(0, 0, "Instances", SaveMenuObject);
		
		// This makes me very unhappy
		if y > PlayerObject.y
		{
			var instBack = instance_create_layer(x + 10, y + 5, "Instances", FloweyRevealBack);
			instBack.floweyID = floweyID;
		}
		else
		{
			var instFront = instance_create_layer(x + 10, y + 5, "Instances", FloweyReveal);
			instFront.floweyID = floweyID;
		}
		instance_deactivate_object(self);
	}
}

// It was that easy huh.
if !instance_exists(FloweyHide)
{
	visible = true;
}
//show_debug_message(y);
//show_debug_message(PlayerObject.y);