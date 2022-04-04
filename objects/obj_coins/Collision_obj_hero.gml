instance_destroy();
newMoney = round((costOneMoney * global.countOpen) * obj_itemContainer.heroMoney_increase);
obj_hero.heroMoney += newMoney;

with (instance_create_layer(obj_hero.x, obj_hero.y + random_range(textMinusPos_y - 5, textMinusPos_y + 5), "shadow", obj_damageCount))
{
	textDamage = "+" + string(other.newMoney) + "$";
	colorDamage = other.start_colorMinus;
}

//instance_create_layer(x, y - 10, "Instances", obj_coinsTakeEffect);
instance_create_layer(x, y - 10, "hud", obj_coinsTakeEffect);