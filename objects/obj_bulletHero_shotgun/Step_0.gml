instance_create_layer(x, y, "Instances", obj_bulletTrail_shotgun);

if speed >= 1.5
{
	speed -= 0.05;
}

if startDestroy = 1
{
	image_alpha -= 0.1;	
}
if image_alpha <= 0
{
	instance_destroy();
}

if x < obj_hero.x - deletePx or x > obj_hero.x + deletePx
{
	instance_destroy();
}
if y < obj_hero.y - deletePx or y > obj_hero.y + deletePx
{
	instance_destroy();
}