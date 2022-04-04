/*
display_width = display_get_width();
display_height = display_get_height();
aspect_ratio = display_width/display_height;
new_x = -1 * obj_camera.ideal_width;
new_y = round(obj_camera.ideal_width/aspect_ratio);
*/

// передача направления привязки и объект камеры
// далее - получение значений координат для адаптации UI под разрешение экрана
scr_uiDraw_Coord(-1, 1, obj_camera);

diff_x = -15;
diff_y = 6;

pixW_bar = 31;
pixH_bar = 31;

bitmap_font = global.textFont;