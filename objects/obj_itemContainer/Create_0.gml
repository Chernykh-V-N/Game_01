/*
display_width = display_get_width();
display_height = display_get_height();
aspect_ratio = display_width/display_height;
new_y = round(obj_camera.ideal_width/aspect_ratio);
*/

// передача направления привязки и объект камеры
// далее - получение значений координат для адаптации UI под разрешение экрана
scr_uiDraw_Coord(1, 1, obj_camera);

// расположение ui перезарядки дробовика
bulletCount_x = 13;
bulletCount_y = -40;

diff_y = -64;

// шрифт свой
bitmap_font = global.textFont;

// бэкграунд
back_borderAlpha = 0.7;

// предметы и их баффы
colorBuffs = #6AFF00;	// цвет описания баффа который дает предмет
buffReducing_1 = 0.35;	// уменьшение баффов героик
buffReducing_2 = 0.80;	// уменьшение баффов рарки

// ----- баффы - героик
// вампиризм
lifesteal_Plus = 0;
lifesteal_Damage = 4;		// % вампиризма

// увеличение критов
critBuff = 5;				// % критического урона

// уменьшение КД стрельбы
shootKDBuff = 20;			// % уменьшения кд стрельбы

// ----- баффы - редкие
// увеличение скорости бега гг
speedBuff = 0.1;			// увеличение скорости гг
mSpeed_start = 1.35;		// стартовая скорость бега гг
mSpeed_new = mSpeed_start;	// скорость бега гг
walkSpeed = mSpeed_new;
dagSpeed = mSpeed_new * ((sqrt(2))/2);

// увеличение подбираемых денег
moneyBuff = 10;				// на сколько % больше получит гг от "банкноты" за каждый предмет
start_heroMoney_increase = 1;
heroMoney_increase = start_heroMoney_increase;

// уменьшение брони противников
armReductionBuff = 10;		// % уменьшения брони противников
armReduction = 0;

// ----- баффы - обычные
// увеличение дальности подбора предметов
pickupBuff = 15;			// % увеличения дальности подбора предметов
pickupStart = 40;			// стартовое расстояние поднятия предметов
pickupNow = pickupStart;

// пассивный хилл
defHealBuff = 0.5;			// на сколько хилл увеличится за каждый предмет
hp_heroHeal = 1;			// количества хила
alarm_healHero = 180;		// тик хилла
alarm[0] = alarm_healHero;

// увеличение количества хп
hpBuff = 15;				// увеличение максимального хп гг



// ----- настройки и прочее
// настройки объекта
image_speed = 0.12;

indOpened = 0;

cellDiff = 36;
diffPlace = 7;

sizeBack_x = 130;
sizeBack_y = 53;

startCell_x = -168;
startCell_y = 153;		//-120;
startCell_big_y = 0;

global.arraySize_1 = 3;
rowLenght_1 = 1;

global.arraySize_2 = 9;
rowLenght_2 = 3;

global.arraySize_3 = 18;
rowLenght_3 = 6;

alphaCell = 0.4;

for (i = 0; i < global.arraySize_1; i += 1)
{
	global.inventory_1[i] = 0;
}

for (i = 0; i < global.arraySize_2; i += 1)
{
	global.inventory_2[i] = 0;
}

for (i = 0; i < global.arraySize_3; i += 1)
{
	global.inventory_3[i] = 0;
}