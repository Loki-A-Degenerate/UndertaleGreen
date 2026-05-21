rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
downKey = keyboard_check(vk_down);
upKey = keyboard_check(vk_up);

// Slow soul mode
if keyboard_check(vk_shift) 
{
	moveSpeed = 1;
}
else
{
	moveSpeed = 2;
}
	
xSpeed = (rightKey - leftKey) * moveSpeed;
ySpeed = (downKey - upKey) * moveSpeed;

//Collisions
if place_meeting(x + xSpeed, y, SolidObject) == true 
{
	xSpeed = 0;
}
if place_meeting(x, y + ySpeed, SolidObject) == true 
{
	ySpeed = 0;
}
	
//Move player
x += xSpeed;
y += ySpeed;