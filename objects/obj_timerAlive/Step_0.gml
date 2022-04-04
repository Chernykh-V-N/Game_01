if timerCan = 1
{
	secondAlive += 1;
}
if secondAlive = 3600 {
	secondAlive = 0;
	minuteAlive += 1;
}

if obj_hero.heroHp <= 0
{
	timerCan = 0;
}