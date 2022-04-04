if global.debugMode = 1
{
	display_width = display_get_width();
	display_height = display_get_height();
	aspect_ratio = display_width/display_height;

	ideal_width += 40;

	ideal_height = round(ideal_width/aspect_ratio);
	
	camera_set_view_size(view_camera[1], ideal_width, ideal_height);
	
	surface_resize(application_surface, view_wport[1], view_hport[1]);
}