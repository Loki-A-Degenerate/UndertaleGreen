ini_open("UndertaleGreenSave.ini");

localRoom =  ini_read_real("Save1", "room", 0);
playerX = ini_read_real("Save1", "x", 0);
playerY = ini_read_real("Save1", "y", 0);
time = ini_read_real("Save1", "timer", 0);
face = ini_read_real("Save1", "facing", 29);

name = ini_read_string("Player", "name", "Sunny");
lv = ini_read_real("Player", "LV", 1);

if global.selectButtonReleased {
	state = 1;
}
if state {
	if global.selectButtonPressed {
		var inst = instance_create_depth(1, 1, -9999, TransitionInObject);
		inst.targetRoom = localRoom;
		inst.targetX = playerX;
		inst.targetY = playerY;
		inst.targetFace = face;
	}
}