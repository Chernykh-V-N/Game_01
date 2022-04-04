if distance_to_object(obj_hero) > 10
{
	x = lerp(x, obj_hero.x + x_new, 0.08);
	y = lerp(y, obj_hero.y + y_new - 6, 0.08);
}
else
{
	x = obj_hero.x;
	y = obj_hero.y;
}

instance_create_layer(x, y, "Instances", obj_expEnemy_trail);
