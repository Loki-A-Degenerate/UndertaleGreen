if point_in_rectangle(PlayerObject.x, PlayerObject.y, cam_x, cam_y, cam_x + cam_w, cam_y + cam_h) 
{
   image_speed = animationSpeed;
} 
else 
{
   image_speed = 0;
}