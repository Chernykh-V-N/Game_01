image_xscale -= 0.05;
image_yscale -= 0.05;

if image_yscale <= 0
{
	instance_destroy();
}