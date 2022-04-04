if AlphaChange < countOf_AlphaChange
{
	image_alpha = 1;
	alarm[0] = 20;
	AlphaChange += 1;
}
else
{
	instance_destroy();
}