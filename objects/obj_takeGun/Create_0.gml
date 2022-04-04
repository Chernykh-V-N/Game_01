selectGun = 2;

// шрифт игровой
map_string = " AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz%.,+-*/0123456789()!:>$↑↓|•[]";
global.textFont = font_add_sprite_ext(spr_fontText_border, map_string, false, -1);

minusName = -32;

minusArrow = -30;

minusText_x = 32;
minusText_y = -14;
diffText = 13;
forText_x = 12;
forText_y = -4;

maxGuns = 3;

// 0 - shotgun
shotgun_hpDamage = 7;
shotgun_shieldDamage = 7;
shotgun_firingDelay = 40;
shotgun_bulletOnce = "3-6";

// 1 - rifle
rifle_hpDamage = 8;
rifle_shieldDamage = 8;
rifle_firingDelay = 10;
rifle_bulletOnce = "1";

// 2 - sniper rifle
snrifle_hpDamage = 65;
snrifle_shieldDamage = 65;
snrifle_firingDelay = 102;
snrifle_bulletOnce = "1";

colorText = c_white //$1DEB48;