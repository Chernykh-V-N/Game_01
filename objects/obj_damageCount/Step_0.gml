if startAlpha = 1
{
	image_alpha -= 0.03;
}
if image_alpha <= 0
{
	instance_destroy();
}
y -= speedText;