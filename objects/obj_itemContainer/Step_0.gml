
for (i = 0; i < global.arraySize_1; i += 1) // HEROIC
{
	if is_struct(global.inventory_1[i])
	{
		switch (global.inventory_1[i].nameItem)
		{
			case "Opener": // +
				lifesteal_Plus = lifesteal_Damage * power(global.inventory_1[i].num, buffReducing_1);
			break;
			case "Rock": // +
				obj_hero.chanceOfCrit_count = obj_hero.chanceOfCrit_count_start + (critBuff * power(global.inventory_1[i].num, buffReducing_1));
			break;
			case "Book": // +
			switch (obj_gunHero.gun_select)
			{
				case 0:
					obj_gunHero.shotgun_firingDelay = obj_gunHero.shotgun_firingDelay_start - ((obj_gunHero.shotgun_firingDelay_start / 100) * (shootKDBuff * power(global.inventory_1[i].num, buffReducing_1)));
				break;
				case 1:
					obj_gunHero.rifle_firingDelay = obj_gunHero.rifle_firingDelay_start - ((obj_gunHero.rifle_firingDelay_start / 100) * (shootKDBuff * power(global.inventory_1[i].num, buffReducing_1)));
				break;
				case 2:
					obj_gunHero.snrifle_firingDelay = obj_gunHero.snrifle_firingDelay_start - ((obj_gunHero.snrifle_firingDelay_start / 100) * (shootKDBuff * power(global.inventory_1[i].num, buffReducing_1)));
				break;
			}
			break;
			exit;
		}
	}
}

for (i = 0; i < global.arraySize_2; i += 1) // RARE
{
	if is_struct(global.inventory_2[i])
	{
		switch (global.inventory_2[i].nameItem)
		{
			case "Coffee": // +
				mSpeed_new = mSpeed_start + (speedBuff * power(global.inventory_2[i].num, buffReducing_2));
				walkSpeed = mSpeed_new;
				dagSpeed = mSpeed_new * ((sqrt(2))/2);
			break;
			case "Card": // +
				heroMoney_increase = start_heroMoney_increase + (start_heroMoney_increase / 100) * (moneyBuff * power(global.inventory_2[i].num, buffReducing_2));
			break;
			case "Glasses": // +
				armReduction = armReductionBuff * power(global.inventory_2[i].num, buffReducing_2);
			break;
			exit;
		}
	}
}

for (i = 0; i < global.arraySize_3; i += 1) // COMMON
{
	if is_struct(global.inventory_3[i])
	{
		switch (global.inventory_3[i].nameItem)
		{
			case "Rope": // +
				pickupNow = pickupStart + ((pickupStart / 100) * (pickupBuff * global.inventory_3[i].num));
			break;
			case "Donut": // +
				hp_heroHeal	= defHealBuff * global.inventory_3[i].num;
			break;
			case "Scotch": // 
				obj_hero.maxHeroHp += hpBuff * global.inventory_3[i].num;
			break;
			exit;
		}
	}
}