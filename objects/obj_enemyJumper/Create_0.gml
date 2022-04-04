maxhp = 40;
hp = 40;
image_speed = 0.35;

blinking = 0;
alarm[2] = irandom_range(70, 100);

enemydefaultSpeed = obj_hero.mSpeed * 0.50; // -50% к скорости от персонажа
enemySpeed = enemydefaultSpeed;

count_exp = 3;						// количество пузырьков опыта
count_money = irandom_range(1, 1);	// количество денег
typeShield = 0;		// тип хп объекта (с щитом/без)

death_Sprite = spr_enemyJumper;	// спрайт смерти

armor = 10;		// 10% армора - процент который срезается от урона любых пуль
minusArm = 0;
 
//vars about hpbar
pixW_bar = 22;
pixH_bar = 7;
constY_barHeight = 37;

work = 0;
flash = 0;
flashTime = 4;
firstBullet = 0; // переменная перваого попадания

textDamagePos_x = 0;
textDamagePos_y = -50;

firing_delay = 0;				// объявление переменной перезарядки
firing_delayReload = 60 * 3;	// перезарядка
radFire = 250;					// радиус стрельбы