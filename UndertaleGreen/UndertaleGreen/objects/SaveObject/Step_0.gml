if distance_to_object(PlayerObject) < 4 && !instance_exists(SaveMenuObject)
{
	if global.selectButtonPressed
	{
		//SavingScript();
		//instance_create_layer(0, 0, "Instances", SaveMenuObject);
		
		// This makes me very unhappy
		if y > PlayerObject.y
		{
			instance_create_layer(x + 10, y + 5, "Instances", FloweyRevealBack);
		}
		else
		{
			instance_create_layer(x + 10, y + 5, "Instances", FloweyReveal);
		}
		instance_deactivate_object(self);
	}
}

if instance_exists(SaveMenuObject)
{
	if SaveMenuObject.selected == 0 && !SaveMenuObject.saving
	{
		if global.selectButtonPressed
		{
			timer = 1;
		}
	}
	
	
	if global.selectButtonPressed
	{
		if timer <= 0 && SaveMenuObject.saving || SaveMenuObject.selected == 1
			{
				instance_destroy(SaveMenuObject);
			}
	}	
		
	
	
	timer--;
	//else if SaveMenuObject.selected == 1
	//{
	//	if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))
	//	{
	//		with SaveMenuObject
	//		{
	//			instance_destroy();
	//		}
	//	}
	//}
	show_debug_message(timer);
}

//show_debug_message(y);
//show_debug_message(PlayerObject.y);