if global.hp <=0 { 
	exit; 
}

rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
downKey = keyboard_check(vk_down);
upKey = keyboard_check(vk_up);

var base_speed = 4;

if (BattleArenaObject.changing || BattleArenaObject.shieldMode) base_speed = 0;
if (keyboard_check(vk_shift)) base_speed = 2;

if BattleArenaObject.shieldMode {
	
}

var xSpeed = (rightKey - leftKey) * base_speed;
var ySpeed = (downKey - upKey) * base_speed;

//Collisions
if place_meeting(x + xSpeed, y, SolidObject) == true {
	xSpeed = 0;
}
if place_meeting(x, y + ySpeed, SolidObject) == true {
	ySpeed = 0;
}
	
//Move player
x += xSpeed;
y += ySpeed;
