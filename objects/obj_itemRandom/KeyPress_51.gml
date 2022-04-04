if canShow = 1
{
	scr_ItemSelected(Item_3);
	preStart_y -= 300;
	amountPower = 0.1;
	global.canTake_sphere = 1;
	instance_destroy();
}