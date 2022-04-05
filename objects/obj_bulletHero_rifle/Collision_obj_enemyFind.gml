/// @description 

repeat (8)
{
	instance_create_layer(x + random_range(-5, 5), y + random_range(-5, 5), "Instances", obj_brokeEffect);
}

audio_play_sound(Sound_Impact_Enemy, 2, false);

instance_destroy();
