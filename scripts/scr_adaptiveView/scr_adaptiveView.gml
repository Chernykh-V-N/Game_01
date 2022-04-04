// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_adaptiveView(){
	xx = display_get_width();
	yy = display_get_height();
	
	view_set_xport(1, 0);
	view_set_yport(1, 0);
	view_set_wport(1, xx);
	view_set_hport(1, yy);
	
	var display_width = display_get_width();
	var display_height = display_get_height();
	var aspect_ratio = display_width/display_height;

	var ideal_width = 640//640;
	var ideal_height = 0;

	//ideal_width=round(ideal_height*aspect_ratio);
	ideal_height = round(ideal_width/aspect_ratio);
	
	camera_set_view_size(view_camera[1], ideal_width, ideal_height);
	
	surface_resize(application_surface, view_wport[1], view_hport[1]);

}