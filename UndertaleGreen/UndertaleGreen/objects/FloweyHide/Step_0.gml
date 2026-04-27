

if (point_in_rectangle(PlayerObject.x, PlayerObject.y, cam_x, cam_y, cam_x + cam_w, cam_y + cam_h)) {
   image_speed = 0.5;
   show_debug_message("why start");
} else {
   image_speed = 0;
}
//show_debug_log(x);
//show_debug_log(y);
//show_debug_message(cam_x);
//show_debug_message(cam_y);
//show_debug_message(cam_x + cam_w);
//show_debug_message(cam_y + cam_h);
//show_debug_message("something obvious");