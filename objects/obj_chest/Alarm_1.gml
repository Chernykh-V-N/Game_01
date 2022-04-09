/// @description 

sprite_index = spr_chest_opened;
audio_play_sound(Sound_PickUp_Chest2, 2, false);

// чота
dir = obj_gunHero.image_angle;
instance_create_layer(x + lengthdir_x(dist, dir), (y + lengthdir_y(dist, dir)), "Instances", randomItems);
with (instance_create_layer(x + lengthdir_x(dist, dir), (y + lengthdir_y(dist, dir)), "Instances", obj_coinsTakeEffect))
{
	image_xscale = 1.5;	
	image_yscale = 1.5;	
}
