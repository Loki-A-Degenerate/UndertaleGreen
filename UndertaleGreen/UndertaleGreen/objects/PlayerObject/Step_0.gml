rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
downKey = keyboard_check(vk_down);
upKey = keyboard_check(vk_up);

var inBlockedRoom = (room == IntroRoom || room == StoryRoom || room == ConfigMenu);
var menuOpen = instance_exists(MenuObject);

moveable = !(inBlockedRoom || menuOpen); // Can't move when in a specific room
visible  = !inBlockedRoom; // Visible only when not in a specific room

if moveable	
	{
		moveSpeed = 2;
	}
else
	{
		moveSpeed = 0;
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

//Opening the menu
if keyboard_check_pressed(ord("C")) || keyboard_check_pressed(vk_control)
{
    if (instance_exists(MenuObject))
    {
        with (MenuObject)
        {
            instance_destroy();
        }
    }
    else if (moveable)
    {
        instance_create_layer(0, 0, "Instances", MenuObject);
		audio_play_sound(MenuMove, 0, false);
    }
}
if instance_exists(MenuObject)
	{
		if MenuObject.submenu == "select"
			{
				if keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"))
					{
						instance_destroy(MenuObject);
					}
			}
	}

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
	
//if keyboard_check_pressed(vk_enter)
//{
//    switch (state)
//    {
//        case 0:
//            show_debug_message("First press");
//            state = 1;
//            break;

//        case 1:
//            show_debug_message("Second press");
//            state = 2;
//            break;

//        case 2:
//            show_debug_message("Third press");
//            break;
//    }
//}