/// @description Insert description here
// You can write your code in this editor

//Criando efeito ao clicar
cria_efeito = function()
{
	var _click = mouse_check_button(mb_left);
	
	if(_click)
	{
		effect_create_above(ef_firework,mouse_x, mouse_y, 1 , c_orange);
	}
}







