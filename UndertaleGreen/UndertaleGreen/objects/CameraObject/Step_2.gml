if (!instance_exists(PlayerObject)) exit;

var targetX = PlayerObject.x - viewWidth / 2;
var targetY = PlayerObject.y - viewHeight / 2;

camera_set_view_pos(view_camera[0], targetX, targetY);

show_debug_message(targetX);