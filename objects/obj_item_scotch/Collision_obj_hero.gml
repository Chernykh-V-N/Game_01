
//instance_create_layer(x, y - 10, "Instances", obj_coinsTakeEffect);
instance_create_layer(x, y, "hud", obj_coinsTakeEffect);

for (i = 0; i < arrSize; i += 1)
{
	if !is_struct((global.inventory_3[i]))
	{
		global.inventory_3[i] = new scr_addItem(nameItem, num, maxNum, sprite);
		instance_destroy();
		exit;
	}
	else
	{
		if (global.inventory_3[i].nameItem = nameItem)
		{
			instance_destroy();
			global.inventory_3[i].num++;
			exit;
		}
	}
}
