// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision2(spd)
{
if dir != -1 // Если игрока нужно подвинуть, то...
{
    for (i = 0; i < 90; i += 5) // Цикл отклонения. В начале - проверяем позицию прямо перед игроком, затем +-angle_step, +-angle_step*2 и т.д.
    {
        lx = lengthdir_x(spd, dir + i); // Вычисляем смещение игрока
        ly = lengthdir_y(spd, dir + i);
        if place_free(x + lx, y + ly) // Если эта позиция свободна, то...
        {
            x += lx; // Двигаем игрока
            y += ly;
            break; // Завершаем цикл
        }
        
        lx = lengthdir_x(spd, dir - i); // Проверяем позицию левее; действия и проверки аналогичны
        ly = lengthdir_y(spd, dir - i);
        if place_free(x + lx, y + ly)
        {
            x += lx;
            y += ly;
            break;
        }
    }
}
}