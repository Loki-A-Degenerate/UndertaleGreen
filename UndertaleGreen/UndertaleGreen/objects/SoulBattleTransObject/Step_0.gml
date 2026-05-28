var cam = view_camera[0]; // The view camera

var guiX = 24; // X position in the GUI
var guiY = 226; // Y position in the GUI

// Translate the GUI position into the world position.
var worldX = camera_get_view_x(cam) + guiX;
var worldY = camera_get_view_y(cam) + guiY;

var dist = point_distance(x, y, worldX, worldY); // Distance to the fight button.

if dist < moveSpeed
{
	finished = true;
}
else
{
	move_towards_point(worldX, worldY, moveSpeed); // Move to position
}

if finished // Setting it within dist isn't fast enough to stop it from moving.
{
	x = worldX;
	y = worldY;
	moveSpeed = 0;
	room_goto(BattleRoom);
	with CameraObject
	{
		battleMode = true;
	}
}