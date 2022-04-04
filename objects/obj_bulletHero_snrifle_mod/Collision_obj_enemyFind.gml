/// @description 

if firstShot = 0
{
	firstShot = 1;
	repeat (8)
	{
		instance_create_layer(x + random_range(-5, 5), y + random_range(-5, 5), "Instances", obj_brokeEffect); //obj_bloodEnemy
	}

	//instance_destroy();
}

scr_pushUp_bullets(other);
