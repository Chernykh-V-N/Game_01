// _drawShadow	- false/true - рисование тени
// _drawSelf	- false/true - рисование спрайта объекта
// _drawHp		- 1 - рисование хп бара для обычных противников
//				| 2 - рисование хп бара для щитовых противников

function scr_enemyGeneralDraw(_drawShadow, _shadowSpr, _shadow_x, _shadow_y, _drawSelf, _drawHp)
{
	if _drawShadow = true	{ scr_drawShadow(_shadowSpr, _shadow_x, _shadow_y); }
	if _drawSelf = true		{ draw_self(); }
	if _drawHp = 1			{ scr_drawHpBar(pixW_bar, pixH_bar, realX, realY, constY_barHeight); }
	if _drawHp = 2			{ scr_drawShieldHpBar(pixW_bar, pixH_bar, realX, realY, constY_barHeight); }
}
