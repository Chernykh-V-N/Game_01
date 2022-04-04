
if global.canTake_sphere = 1
{
	instance_create_layer(x, y, "hud", obj_coinsTakeEffect);
	with (instance_create_layer(x, y, "hud", obj_itemRandom))
	{
		objRarity = other.objRarity_sphere;
		alarm[0] = 1;
	}
	instance_destroy();
}
