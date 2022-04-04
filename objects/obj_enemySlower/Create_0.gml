maxhp = 50;
hp = 50;

image_speed = 0.02;

coeffSlower = 50;	// коэффициент замедления
// на сколько % будет замедляться персонаж

count_exp = 5;						// количество пузырьков опыта
count_money = irandom_range(2, 4);	// количество денег
typeShield = 1;		// тип хп объекта (с щитом/без)

death_Sprite = spr_enemySlower;	// спрайт смерти

armor = 10;			// 0% армора - процент который срезается от урона любых пуль
minusArm = 0;

maxshield = 250;	// максимальное количество щитов
shield = 250;		// количество щитов прямо сейчас

baff = 3;					// бафф щита
baffDeactive = baff + 1;	// если щит сломан
 
//переменные координат хп бара
pixW_bar = 22;
pixH_bar = 7;
constY_barHeight = 30;

work = 0;
flash = 0;
flashTime = 4;
firstBullet = 0; // переменная первого попадания

textDamagePos_x = 0;
textDamagePos_y = -50;

// зона замедления
placeCreated_obj = instance_create_layer(x, y, "Instances", obj_slowerPlace);