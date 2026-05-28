if (!instance_exists(PlayerObject)) exit;

var target_X = PlayerObject.x - camWidth/2;
var target_Y = PlayerObject.y - camHeight/2;

x += (target_X - x)/2;
y += (target_Y - y)/2;

var camTargetX = clamp(x, 0, room_width - camWidth);
var camTargetY = clamp(y, 0, room_height - camHeight);

var sx = 0;
var sy = 0;

if instance_exists(MenuShake)
{
	sx = MenuShake.shakeX;
	sy = MenuShake.shakeY;
}
	

camera_set_view_pos(view_camera[0], camTargetX + sx, camTargetY + sy);