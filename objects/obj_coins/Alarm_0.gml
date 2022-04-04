if AlphaChange < countOf_AlphaChange
{
	image_alpha = 0.5;
	alarm[1] = 20;
	AlphaChange += 1;
}
else
{
	instance_destroy();
}