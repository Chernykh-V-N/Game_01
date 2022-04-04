chestRandom_count = irandom_range(0, 100);

if chestRandom_count <= 30
{
	instance_create_layer(x, y, "Instances", obj_chest);
	instance_destroy();
}
else
{
	instance_destroy();
}