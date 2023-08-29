/// @description Insert description here
// You can write your code in this editor

//Desenhando os meus meses
//Desenhe o nome de cada mes um embaixo do outro

for(var i=0; i < ds_list_size(meses); i++)
{
	//Desenhando os meses
	//Pegando o mes atual
	var _mes = meses[| i];
	
	//Permitir que o usuario rode pela lista
	//Se o indice atual(ou seja, o que o usuario esta selecionando)
	//For igual ao valor atual do I
	//E deixo o mes atual na cor vermelha
	var _cor = c_white;
	if(i == indice)
	{
		_cor = c_red;
	}
	
	draw_set_color(_cor);
	draw_text(20,20 + 20 * i, _mes);
	draw_set_color(-1);
}












