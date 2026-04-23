room_goto(targetRoom);
PlayerObject.x = targetX;
PlayerObject.y = targetY;

// Reverse animation when finishing room transition.
image_speed = -1;