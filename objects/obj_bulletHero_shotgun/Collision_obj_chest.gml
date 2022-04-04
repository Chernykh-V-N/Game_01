repeat (8)
{
	instance_create_layer(x + random_range(-5, 5), y + random_range(-5, 5), "Instances", obj_brokeEffect);
}

instance_destroy();