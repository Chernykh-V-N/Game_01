// _direction_x - влево (-1) или вправо (1)
// _direction_y - вверх (-1) или вниз (1)
function scr_uiDraw_Coord(_direction_x, _direction_y, _cameraObj)
{
	var display_width = display_get_width();
	var display_height = display_get_height();
	var aspect_ratio = display_width/display_height;
	new_x = _direction_x * _cameraObj.ideal_width;
	new_y = _direction_y * round(_cameraObj.ideal_width/aspect_ratio);
}