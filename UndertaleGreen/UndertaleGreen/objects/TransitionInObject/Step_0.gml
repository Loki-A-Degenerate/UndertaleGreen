alpha += fadeSpeed;

if (alpha >= 1) {
    alpha = 1;

    if (targetRoom != noone) {
        room_goto(targetRoom);
    }
	PlayerObject.x = targetX;
	PlayerObject.y = targetY;
	PlayerObject.face = targetFace;
	
	instance_create_layer(0, 0, "Instances", TransitionOutObject);
    instance_destroy(); // IMPORTANT
}