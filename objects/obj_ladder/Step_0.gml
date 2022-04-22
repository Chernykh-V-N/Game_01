/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if collision_rectangle(
x - ((local_width/2) - 3),
y - (local_height - 60),
x + ((local_width/2) - 3),
y - 3,
obj_hero, true, true)
{
	image_alpha = 0.3;
}
else
{
	image_alpha = 1;
}

draw_self();
