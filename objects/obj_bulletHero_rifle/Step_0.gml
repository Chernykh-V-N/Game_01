instance_create_layer(x, y, "Instances", obj_bulletTrail);

if x < obj_hero.x - deletePx or x > obj_hero.x + deletePx
{
	instance_destroy();
}
if y < obj_hero.y - deletePx or y > obj_hero.y + deletePx
{
	instance_destroy();
}