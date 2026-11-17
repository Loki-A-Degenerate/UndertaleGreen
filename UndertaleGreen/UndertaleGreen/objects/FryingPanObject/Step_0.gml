rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
downKey = keyboard_check(vk_down);
upKey = keyboard_check(vk_up);

var centX = room_width * 0.5;
var centY = room_height * 0.5;

if leftKey { // this bit is ugly, fix if discover something better.
	panPosX = centX-circleRad;
	panPosY = centY+0;
	panRotation = 90;
	//show_debug_message("are we here?");
} else if rightKey {
	panPosX = centX+circleRad;
	panPosY = centY+0;
	panRotation = 270;
} else if upKey {
	panPosX = centX+0;
	panPosY = centY-circleRad;
	panRotation = 0;
} else if downKey {
	panPosX = centX+0;
	panPosY = centY+circleRad;
	panRotation = 180;
}

show_debug_message(x);