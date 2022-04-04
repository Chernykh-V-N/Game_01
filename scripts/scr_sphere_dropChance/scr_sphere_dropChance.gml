// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_sphere_dropChance(_percentItems, _heroicChance, _heroicNumber, _heroic_Spr, _rareChance, _rareNumber, _rare_Spr, _commonChance, _commonNumber, _common_Spr)
{
	if _percentItems <= _heroicChance
	{
		sprite_index = _heroic_Spr;
		objRarity_sphere = _heroicNumber;
	}
	if _percentItems > _heroicChance and _percentItems <= (_heroicChance + _rareChance)
	{
		sprite_index = _rare_Spr;
		objRarity_sphere = _rareNumber;
	}
	if _percentItems > (_heroicChance + _rareChance) and _percentItems <= (_heroicChance + _rareChance + _commonChance)
	{
		sprite_index = _common_Spr;
		objRarity_sphere = _commonNumber;
	}
}