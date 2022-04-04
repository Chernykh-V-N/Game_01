/*
display_width = display_get_width();
display_height = display_get_height();
aspect_ratio = display_width/display_height;
new_x = -1 * obj_camera.ideal_width;
new_y = -1 * round(obj_camera.ideal_width/aspect_ratio);
*/

// передача направления привязки и объект камеры
// далее - получение значений координат для адаптации UI под разрешение экрана
scr_uiDraw_Coord(-1, -1, obj_camera);

bitmap_font = global.textFont;

diff_x = -15;
diff_y = -6;

pixW_bar = 106;
pixH_bar = 17;

pixW_bar_exp = 72;
pixH_bar_exp = 9;

bossNowActive = 0;