display_width = display_get_width();
display_height = display_get_height();
aspect_ratio = display_width/display_height;

new_y = round(obj_camera.ideal_width/aspect_ratio);

diff_y = -80;

nameBoss = "ROBO-STUMP"

maxhp = 2500//3000;
hp = 2500//3000;

canAttack = 1;				// может/не может атаковать
reloadAttack = 60 * 1.3;	// время атаки
damageCount = 40;			// количество урона
typeShield = 0;		// тип хп объекта (с щитом/без)

image_speed = 0.15;
boss_angle = 0;
flash_boss = c_white;

image_xscale = 0.1;
image_yscale = 0.1;

ani_speed_mainBody = 0;
ani_speed_roots = 0;
ani_speed_head = 0;
ani_head_y = 0;

count_exp = 50;							// количество пузырьков опыта
count_money = irandom_range(10, 20);	// количество денег

death_Sprite = spr_enemyRunner;	// спрайт смерти

armor = 20;			// 0% армора - процент который срезается от урона любых пуль
minusArm = 0;

baff = 3;					// бафф щита
baffDeactive = baff + 1;	// если щит сломан
 
activeBoss = 1;

//vars about hpbar
pixW_bar = 202;
pixH_bar = 11;

work = 0;
flash = 0;
flashTime = 4;
firstBullet = 0; // переменная перваого попадания

textDamagePos_x = 0;
textDamagePos_y = -65;

placeCreated_obj = instance_create_layer(x - 40, y + 30, "Instances", obj_grassPlace);
placeCreated_obj = instance_create_layer(x + 50, y + 20, "Instances", obj_grassPlace);
placeCreated_obj = instance_create_layer(x - 20, y - 20, "Instances", obj_grassPlace);
placeCreated_obj = instance_create_layer(x + 20, y - 30, "Instances", obj_grassPlace);
placeCreated_obj = instance_create_layer(x + 13, y + 13, "Instances", obj_grassPlace);
placeCreated_obj = instance_create_layer(x - 15, y + 20, "Instances", obj_grassPlace);
placeCreated_obj = instance_create_layer(x - 50, y + 12, "Instances", obj_grassPlace);
placeCreated_obj = instance_create_layer(x - 47, y - 20, "Instances", obj_grassPlace);
placeCreated_obj = instance_create_layer(x + 47, y - 20, "Instances", obj_grassPlace);
placeCreated_obj = instance_create_layer(x + 30, y + 40, "Instances", obj_grassPlace);

