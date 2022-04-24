maxhp = 300;
hp = 300;

canAttack = 1;				// может/не может атаковать
reloadAttack = 60 * 1.3;	// время атаки
damageCount = 20;			// количество урона
typeShield = 0;		// тип хп объекта (с щитом/без)

enemydefaultSpeed = obj_hero.mSpeed * 1.5; // -25% к скорости от персонажа
enemySpeed = enemydefaultSpeed;

count_exp = 2;						// количество пузырьков опыта
count_money = irandom_range(1, 2);	// количество денег

death_Sprite = spr_enemy;	// спрайт смерти

armor = 20;		// 20% армора - процент который срезается от урона любых пуль
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

image_speed = 0.2;

peremennaja = 1;
