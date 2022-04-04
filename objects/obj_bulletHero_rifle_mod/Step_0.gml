instance_create_layer(x, y, "Instances", obj_bulletTrail);

if x < obj_hero.x - deletePx or x > obj_hero.x + deletePx
{
	instance_destroy();
}
if y < obj_hero.y - deletePx or y > obj_hero.y + deletePx
{
	instance_destroy();
}

if instance_exists(obj_enemyFind)
{
	direction += sin(degtorad(point_direction(x, y, obj_hero.followEnemy.x, obj_hero.followEnemy.y - 10) - direction)) * 20;
	image_angle = direction;
}
