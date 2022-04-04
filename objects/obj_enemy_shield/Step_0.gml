if hp <= 0
{
	instance_destroy();
}

if work = 1
{
	//thats for shaking by shooting some obj
	image_angle += random_range(-1, 1);
	
	//thats for moving by shooting some obj
	//x += random_range(-1, 1);
	//y += random_range(-1, 1);
}
else
{
	image_angle = 0;
}

//vars about hpbar
realX = x - pixW_bar/2;
realY = y - pixH_bar/2;