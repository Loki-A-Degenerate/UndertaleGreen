view_enabled = true;
view_visible[0] = true;
camera_set_view_size(view_camera[0], baseWidth, baseHeight);

surface_resize(application_surface, 320, 240);

view_set_wport(0, 640);
view_set_hport(0, 480);
view_set_xport(0, 0);
view_set_yport(0, 0);

window_set_size(640, 480);
//window_center();

gpu_set_texfilter(false);
