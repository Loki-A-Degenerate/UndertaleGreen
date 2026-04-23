

if place_meeting(x, y, PlayerObject) && !instance_exists(TransitionObject)
	{
		var inst = instance_create_depth(1, 1, -9999, TransitionObject);
		inst.targetRoom = targetRoom;
		inst.targetX = targetX;
		inst.targetY = targetY;
		//show_debug_message("We still here?");
	}