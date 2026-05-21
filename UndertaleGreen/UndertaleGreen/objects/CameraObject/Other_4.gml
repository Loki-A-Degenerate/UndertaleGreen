view_enabled = true;
view_visible[0] = true;
camera_set_view_size(view_camera[0], camWidth, camHeight);

surface_resize(application_surface, camWidth, camHeight);

view_set_wport(0, viewWidth);
view_set_hport(0, viewHeight);
view_set_xport(0, 0);
view_set_yport(0, 0);

window_set_size(viewWidth, viewHeight);
//window_center();

gpu_set_texfilter(false);