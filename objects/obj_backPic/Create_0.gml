spr = sprite_add("pause_pic.data", 1, false, true, 0, 0);
sprite_index = spr;


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

ideal_height = round(ideal_width/aspect_ratio);

image_xscale = 1 / (xx / ideal_width);
image_yscale = 1 / (yy / ideal_height);