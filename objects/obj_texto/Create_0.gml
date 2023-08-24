/// @description Insert description here
// You can write your code in this editor


#region variaveis

texto =  "Teste novo kkkkkk \nMeuTexto é muito bancana show de bola!!"

#endregion

#region metodos

desenha_texto = function(_texto)
{
	//Iniciando variaveis
	var _x1,_y1,_x2,_y2, _larg = 400, _alt = 50, _marg = 4;
	
	_x1 = room_width / 2  - _larg / 2;
	_y1 = room_height / 2 - _alt / 2;
	_x2 = _x1 + _larg;
	_y2 = _y1 + _alt;
	
	
	//Desenhando a borda da caixa de texto
	//Ela deve ser 2 pixel maior que a caixa de texto 
	draw_rectangle_color(_x1 - _marg,_y1 - _marg,_x2 + _marg,_y2 + _marg,c_fuchsia,c_green,c_fuchsia,c_red,false);
	
	//Desenhando minha caixa de dialogo
	draw_rectangle_color(_x1,_y1,_x2,_y2, c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
	
	draw_set_halign(0);
	draw_set_valign(0);
	
	//Mudando a fonte (teste)
	draw_set_font(fnt_texto);
	
	//Pegando a altura da fonte EU ainda não mudei a fonte
	var _txt_alt = string_height(_texto);
	
	//Desenhando o meu texto
	draw_text_ext(_x1 + _marg, _y1 + _marg,_texto, _txt_alt,_larg - _marg);
	
	//Resetando
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);

}

#endregion




