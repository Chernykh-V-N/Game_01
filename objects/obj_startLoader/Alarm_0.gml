if global.dark < 1
{
	global.dark += 0.01;
	alarm[0] = 1;
}
else
{
	if pressed = 1
	{
		alarm[2] = 100;
	}
}