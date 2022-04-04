randomize();

mSpeed = 1.35; // скорость бега гг
hSpeed = 0;
vSpeed = 0;
walkSpeed = mSpeed;
dagSpeed = mSpeed * ((sqrt(2))/2);

dir = -1;
rot = 0;

angleGun_1 = 20;
angleGun_2 = 160;

anim_heroRun = spr_runHero;
anim_heroIdle = spr_idleHero;
anim_heroRun_back = spr_runHero_back;
anim_heroIdle_back = spr_idleHero_back;
hero_animationSpeed = 0.3; // скорость анимации спрайтов гг

mask_index = spr_heroCollisionMovement;

delayDust = 15;

startHeroHp = 100;
heroHp = 100;				// жизни героя изначально

upLvlExp_Start = 10;		// сколько опыта требуется для апа левела
upLvlExp = upLvlExp_Start;	// сколько опыта требуется для апа левела
coeffExp_Start = 1;
heroExp = 0;				// количество опыта
heroLvl = 0;

buffMaxHp = 1;				// 1 - без баффа
maxHeroHp = startHeroHp * buffMaxHp;

start_defHealHero = 1;		// постоянный хилл героя
defHealHero = start_defHealHero; 

powerCrit = 5;									//сила крита
chanceOfCrit_count_start = 3;					// стартовая вероятность крита
chanceOfCrit_count = chanceOfCrit_count_start;	// % вероятность крита

pixW_bar = 22;
pixH_bar = 7;

flash = 0;
shieldFlash = 0;
hero_flashTime = 4;

skillTake = global.skillSelect;
skillCan = 1;
click = 1;

// стартовые деньги гг
heroMoney = 10; //irandom_range(5, 800);

// skills vars
maxKD = 0;
// blink
blinkKD = 60 * 5;
distBlink = 60;
// heal
healKD = 60 * 25;
healCoeff = 0.3;
// turret
turretKD = 60 * 30;
turretDist = 60;
turretTake = 0;
// shield
skillShield = 0;
shieldHpMax = 60;
shieldHp = 60;
shieldKD = 60 * 20;
shieldSize_start = 0.2;
shieldSize = shieldSize_start;
shieldSize_step = 0.1;
shieldSize_active = 0;

// сферы
global.canTake_sphere = 1;

// эффект тряска экрана
instance_create_layer(x, y, "hud", obj_shakeHero);

// тут добавить, что если включена настройка
instance_create_layer(x, y, "shadow", obj_heroHpBarSmall); // мини бар хп

// шрифт игровой
map_string = " AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz%.,+-*/0123456789()!:>$↑↓|•[]";
global.textFont = font_add_sprite_ext(spr_fontText_border, map_string, false, -1);

#region Звук ходьбы
audio_play_sound(Sound_Actor_Steps_Grass, 1, 1);
#endregion

#region Звук телепорта
TeleportSound = Sound_Actor_Teleport;
#endregion


audio_listener_set_orientation (0,0,1,0,0,0,1);
