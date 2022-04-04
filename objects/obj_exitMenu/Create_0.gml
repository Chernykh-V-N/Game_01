image_speed = 0;
image_index = 1;
mouseIn = 0;


xx = display_get_width();
yy = display_get_height();
	
display_width = display_get_width();
display_height = display_get_height();
aspect_ratio = display_width/display_height;

ideal_width = 640//640;
ideal_height = 0;

ideal_height = round(ideal_width/aspect_ratio);

x = (ideal_width / 2) - (140 / 2);
y = (ideal_height / 2) - 34;