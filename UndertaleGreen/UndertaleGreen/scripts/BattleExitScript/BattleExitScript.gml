function BattleExitScript(_savedRoom, _savedX, _savedY) {
	room_goto(_savedRoom);
	instance_destroy(BattleContainerObject);
	instance_create_layer(_savedX, _savedY, "Instances", PlayerObject);
	instance_create_layer(0, 0, "Instances", TransitionOutObject);
	PlayerObject.stepCounter = 0;
	CameraObject.battleMode = false;
}