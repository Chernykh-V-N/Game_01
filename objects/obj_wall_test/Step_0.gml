
if collision_rectangle(
x - ((local_width/2) - 3),
y - local_height,
x + ((local_width/2) - 3),
y - 3,
obj_hero, true, true)
{
	image_alpha = 0.3;
	//depth = obj_hero.depth - 2;
}
else
{
	image_alpha = 1;
	//depth = obj_hero.depth + 2;
}

draw_self();

/*
scr_alphaCollision
(
	local_height,
	local_height,
	0.3
);
