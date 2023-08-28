/// @description Insert description here
// You can write your code in this editor


//Fazer com que o texto fique centralizado na caixa de texto

#region variaveis

texto  =  "Teste novo kkkkkk MeuTexto é muito bancana show de bola!!";
texto2 =  "\nCachorro quente bem gostoso !!!!!!";
cont   = 1;

#endregion

#region metodos

///@function alinha_texto(horizontal,vertical);
alinha_texto = function(_hor, _ver)
{
	draw_set_halign(_hor);
	draw_set_valign(_ver);
}

desenha_titulo_animado = function(_texto)
{
	//Definindo a fonte
	draw_set_font(fnt_titulo);
	//Centralizar o texto
	alinha_texto(1,1);
	//Meu timer
	var _temp = 5 * get_timer() / 1000000;
	
	var _x1,_y1, _ang, _cor, _alpha;
	_x1		= room_width / 2 + (18 * sin(2 * _temp));
	_y1		= 100 + (13 * sin(3 * _temp));
	_ang	= 0 + (10 * sin(1.5 * _temp));
	_cor	= c_fuchsia;
	_alpha	= abs(sin(0.8 * _temp));
	
	draw_text_transformed_color(_x1, _y1, _texto, 1, 1, _ang,_cor, _cor,_cor,_cor, _alpha);
	
	//Alterando valores
	_temp += .2;
	_x1		= room_width / 2 + (18 * sin(2 * _temp));
	_y1		= 100 + (13 * sin(3 * _temp));
	_ang	= 0 + (10 * sin(1.5 * _temp));
	_alpha	= 1;
	_cor	= make_color_hsv(255 * sin(0.1 * _temp), 255, 255);//mudar cor com bas no tempo
	
	//Desenhando a parte de frente do texto
	draw_text_transformed_color(_x1, _y1, _texto, 1, 1, _ang,_cor, _cor,_cor,_cor, _alpha);
	
	//Resetando o alinhamento e font
	alinha_texto(-1,-1);
	draw_set_font(-1);
	
}

desenha_texto = function(_texto)
{
	//Se a pessoa estiver segurando SPAÇO o texto escreve mais rapido
	var _vel = keyboard_check(vk_space) ? 1 : .1;
	//Fazer com que SE a pessoa apertou enter, então ele escreve o texto inteiro de uma vez
	if(keyboard_check_released(vk_enter))
	{
		//Fazendo o cont ser do tamanho do texto
		cont = string_length(_texto);//retorna largura da nossa string em caracteres
	}
	
	//Aumentando o valor dele se ele for menor que o texto
	if(cont < string_length(_texto)) cont += _vel;
	//show_debug_message(cont);
	
	cont += _vel;
	draw_set_halign(0);
	draw_set_valign(0);
	
	//Mudando a fonte (teste)
	draw_set_font(fnt_texto);
	//Definindo o meu texo
	var _meu_texto = string_copy(_texto, 1, cont);	
	
	//Iniciando variaveis
	var _x1,_y1,_x2,_y2, _larg = 400, _alt = 50, _marg = 4;
	//Pegando a altura da fonte EU ainda não mudei a fonte
	//Sempre que usar a \n para pular linha evitar usara a variaveç
	//Pois cria espaçamento entre linhas use no caso por exemplo uma string "A"
	var _txt_alt = string_height("A");
	//Checando se eu preciso aumentar o tamanho da caixa (_alt)
	_alt = string_height_ext(_meu_texto,_txt_alt, _larg - _marg);
	_x1 = room_width / 2  - _larg / 2;
	_y1 = room_height / 2 - _alt / 2;
	_x2 = _x1 + _larg;
	_y2 = _y1 + _alt;
	
	

	//Desenhando a borda da caixa de texto
	//Ela deve ser 2 pixel maior que a caixa de texto 
	draw_rectangle_color(_x1 - _marg,_y1 - _marg,_x2 + _marg,_y2 + _marg,c_fuchsia,c_green,c_fuchsia,c_red,false);
	
	//Desenhando minha caixa de dialogo
	draw_rectangle_color(_x1,_y1,_x2,_y2, c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
	
	//Desenhando o meu texto
	draw_text_ext(_x1 + _marg, _y1 + _marg,_meu_texto, _txt_alt,_larg - _marg);
	
	//Resetando
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);

}

#endregion




