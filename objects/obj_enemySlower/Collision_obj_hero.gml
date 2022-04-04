repeat (10)
{
	with(instance_create_layer(x + random_range(-15, 15), y + random_range(-15, 15), "Instances", obj_boomFire))
	{
		image_xscale = 1.5;
		image_yscale = 1.5;
	}
}
instance_destroy();