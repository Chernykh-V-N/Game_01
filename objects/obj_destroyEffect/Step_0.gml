image_xscale -= 0.04;
image_yscale -= 0.04;
//image_angle += 3;

if image_yscale <= 0
{
	instance_destroy();
}

x = x + lengthdir_x(0.7, angle);
y = y + lengthdir_y(0.7, angle);