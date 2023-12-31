/// @description Insert description here
// You can write your code in this editor

//DS MAP é uma estrutura bem parecida com as ds list
//Porem ao invés de se ordenar por indices (0, 1, 2, 3, 4)
//Ela se ordena por chaves (nomes)

//Nome
//Idade
//Status
//Level
//Foto

mapa = ds_map_create();

//Adicionando o nome

ds_map_add(mapa, "nome","Anastacia");
//Adicionando a idade
ds_map_add(mapa, "idade",14);
//Status
mapa[? "status"] = "Bom";
//Level
mapa[? "level"]  = 1;
//Foto
mapa[? "foto"]   = spr_player;

//show_message(ds_map_find_value(mapa, "nome"));

personagem2 = ds_map_create();
personagem2 [? "nome"]   = "Juca";
personagem2 [? "idade"]  = 14;
personagem2 [? "status"] = "Doente";
personagem2 [? "level"]  = 3;
personagem2 [? "foto"]   = spr_player;


pos_x = 0;
pos_y = 0;

//Desenhe na tela o nome, idade, status e level do personagem
//Crie um meto de desenhar dados

///@method desenha_dados(mapa)
desenha_dados = function(_mapa)
{
	#region dados do mapa
	//Pegando as informações do mapa
	var _nome    = _mapa[? "nome"];
	var _idade   = _mapa[? "idade"];
	var _status  = _mapa[? "status"];
	var _level   = _mapa[? "level"];
	var _foto    = _mapa[? "foto"];
	
	#endregion Variaveis de desenho
	
	#region Variaveis de desenho
	//Variaveis de desenho
	var _larg   = 250;
	var _alt    = 120;
	var _xx		= pos_x; /* room_width / 2;*/
	var _yy		= pos_y;  /*room_height / 2;*/
	var _xscale = _larg / sprite_get_width(spr_moldura);//achando a escala do retangulo
	var _yscale = _alt / sprite_get_height(spr_moldura);
	var _x1     = _xx;
	var _y1     = _yy;
	var _marg_x = 7 + sprite_get_width(spr_player); //7 Pixel + a sprite
	
	//Altura do texto, para poder pular linha
	var _txt_alt  = string_height(_nome);
	var _marg_y = _txt_alt  +7; //7 Pixel + a sprite
	#endregion
	

	//Desenhando a minha moldura
	draw_sprite_ext(spr_moldura, 0, _x1, _y1,_xscale,_yscale,  0, c_white,1);
	
	//Ajustando a posição inicial do texto
	_x1 = _xx - _larg / 2 + _marg_x;
	_y1 = _yy - _alt / 2 + _marg_y;
	
	//Desenhando a sprite
	var _spr_w = sprite_get_width(_foto);
	var _spr_h = sprite_get_width(_foto);
	draw_sprite_ext(_foto, 0, _x1 - _spr_w / 2 , _y1 + 10 + _spr_h / 2, -1, 1 ,0, c_white, 1);
	
	//Alinhando o texto
	draw_set_valign(1);
	//Desenhando o texto
	draw_text(_x1, _y1,"Nome: " + _nome);
	//Idade
	draw_text(_x1, _y1  + _txt_alt * 1, "Idade: " + string(_idade));
	//Status
	draw_text(_x1, _y1  + _txt_alt * 2, "Status: " + _status);
	//Level
	draw_text(_x1, _y1  + _txt_alt * 3, "Level: " + string(_level));
	draw_set_valign(-1);
}














