rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
downKey = keyboard_check(vk_down);
upKey = keyboard_check(vk_up);

if room == IntroRoom || room == StoryRoom || room == ConfigMenu 
	{
		self.visible = false;
		moveSpeed = 0;
	}
else 
	{
		self.visible = true;
		moveSpeed = 2;
	}

xSpeed = (rightKey - leftKey) * moveSpeed;
ySpeed = (downKey - upKey) * moveSpeed;

//Set sprite
image_speed = 0.13;
mask_index = sprite[FORWARD];
if xSpeed > 0 {face = RIGHT};
if xSpeed < 0 {face = LEFT};

if ySpeed > 0 {face = FORWARD};
if ySpeed < 0 {face = BACK};
sprite_index = sprite[face];

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

//Animate
if xSpeed == 0 && ySpeed == 0 
	{
		image_index = 0;
	}
	
//Depth
depth = -bbox_bottom;

//Exit the game
if keyboard_check(vk_escape) 
	{
		if (!instance_exists(QuittingObject))
		    {
				instance_create_layer(0, 0, "Instances", QuittingObject);
		    }
	}
else 
	{
		with (QuittingObject) 
			{
				instance_destroy();
			}
	}