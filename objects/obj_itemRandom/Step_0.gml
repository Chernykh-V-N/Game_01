x = obj_hero.x;
y = obj_hero.y;

//1
if mouseIn_1 = 1
{
	amountNow_1 += amountPower;
}
if mouseIn_1 = 0
{
	amountNow_1 -= amountPower;
}
if amountNow_1 <= 0
{
	amountNow_1 = 0;
}
if amountNow_1 >= 1
{
	amountNow_1 = 1;
}
//2
if mouseIn_2 = 1
{
	amountNow_2 += amountPower;
}
if mouseIn_2 = 0
{
	amountNow_2 -= amountPower;
}
if amountNow_2 <= 0
{
	amountNow_2 = 0;
}
if amountNow_2 >= 1
{
	amountNow_2 = 1;
}
//3
if mouseIn_3 = 1
{
	amountNow_3 += amountPower;
}
if mouseIn_3 = 0
{
	amountNow_3 -= amountPower;
}
if amountNow_3 <= 0
{
	amountNow_3 = 0;
}
if amountNow_3 >= 1
{
	amountNow_3 = 1;
}

y_InOut_1 = lerp(0, preStart_y, amountNow_1);
y_InOut_2 = lerp(0, preStart_y, amountNow_2);
y_InOut_3 = lerp(0, preStart_y, amountNow_3);
