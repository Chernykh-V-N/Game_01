global.gunSelect = obj_takeGun.selectGun;
global.skillSelect = obj_takeSkills.selectSkill;
global.typeGunSelect = obj_typeGun.image_index;
obj_startLoader.canSee = 1;
obj_startLoader.roomNow = Stadium_Play;

if global.dark = 0
{
	audio_play_sound(Sound_Click, 2, false);
}

scr_loadRoom();
