//gpu_set_depth(2 - bbox_bottom);

var cam = view_camera[0];

var x1 = camera_get_view_x(cam);
var y1 = camera_get_view_y(cam);
var x2 = x1 + camera_get_view_width(cam);
var y2 = y1 + camera_get_view_height(cam);

draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, false);

draw_set_colour(c_white);
