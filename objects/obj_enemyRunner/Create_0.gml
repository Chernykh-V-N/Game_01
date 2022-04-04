maxhp = 10;
hp = 10;
image_speed = 1.2;

damageCount = 50; // количество урона

enemydefaultSpeed = obj_hero.mSpeed * 1.2; // +200% к скорости от персонажа
enemySpeed = enemydefaultSpeed;

count_exp = 1;						// количество пузырьков опыта
count_money = irandom_range(1, 1);	// количество денег
typeShield = 0;		// тип хп объекта (с щитом/без)

death_Sprite = spr_enemyRunner;	// спрайт смерти

armor = 0;		// 0% армора - процент который срезается от урона любых пуль
minusArm = 0;
 
//vars about hpbar
pixW_bar = 22;
pixH_bar = 7;
constY_barHeight = 25;

work = 0;
flash = 0;
flashTime = 4;
firstBullet = 0; // переменная перваого попадания

textDamagePos_x = 0;
textDamagePos_y = -50;