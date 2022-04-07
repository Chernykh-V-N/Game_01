/// @function					scr_enemyGeneralDraw(_drawShadow, _shadowSpr, _shadow_x, _shadow_y, _drawSelf, _drawHp);
/// @param  {real}	_drawShadow	Рисование спрайта тени
/// @param  {index}	_shadowSpr	Спрайт тени
/// @param  {real}	_shadow_x	Координата x спрайта тени
/// @param  {real}	_shadow_y	Координата x спрайта тени
/// @param  {real}	_drawSelf	Рисование себя
/// @param  {real}	_drawHp		Тип рисование хп бара

function scr_enemyGeneralDraw(_drawShadow, _shadowSpr, _shadow_x, _shadow_y, _drawSelf, _drawHp)
{
	if _drawShadow = true	{ scr_drawShadow(_shadowSpr, _shadow_x, _shadow_y); }
	if _drawSelf = true		{ draw_self(); }
	if _drawHp = 1			{ scr_drawHpBar(pixW_bar, pixH_bar, realX, realY, constY_barHeight); }
	if _drawHp = 2			{ scr_drawShieldHpBar(pixW_bar, pixH_bar, realX, realY, constY_barHeight); }
}
