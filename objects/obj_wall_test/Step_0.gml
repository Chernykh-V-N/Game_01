
if collision_rectangle(
x - ((local_width/2) - 3),
y - local_height + 1,
x + ((local_width/2) - 3),
y - (local_width/2) - 2,
obj_hero, true, true)
{
	image_alpha = 0.5;
	//depth = obj_hero.depth - 2;
}
else
{
	image_alpha = 1;
	//depth = obj_hero.depth + 2;
}

draw_self();