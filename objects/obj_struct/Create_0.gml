/// @description Insert description here
// You can write your code in this editor

//Contrutor
#region construtor

cria_personagem = function(_nome, _idade, _status, _level, _foto) constructor
{
	/*static*/ nome   = _nome;//essa linha só vai ser executado uma vez
	idade  = _idade;
	status = _status;
	level  = _level
	foto   = _foto;	
	
	//Variavel pos X e pos Y, que inicia no mieo da tela
	
	//Um método que muda o valor do pos x e posy com base no clique e posição do mouse
	
	
	/*static muda_nome = function(_texto)
	{
		nome = _texto;	
	}*/
	
	static desenha_personagem = function()
	{
		#region dados do mapa
		//Pegando as informações do mapa
		var _nome    = nome;
		var _idade   = idade;
		var _status  = status;
		var _level   = level;
		var _foto    = foto;
	
		#endregion Variaveis de desenho
	
		#region Variaveis de desenho
		//Variaveis de desenho
		var _larg   = 250;
		var _alt    = 120;
		var _xx		= room_width / 2; /* room_width / 2;*/
		var _yy		= room_height / 2;  /*room_height / 2;*/
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
	
}

personagem1 = new cria_personagem("Juca", 50,"Bom", 1, spr_player);
personagem2 = new cria_personagem("Anastacia", 33,"Ruim", 2, spr_player);
personagem2.muda_nome("Maravilha");

contador = function()
{
	static num = 0; //num é 0 porém ele é iniciado apenas uma vez
	num++;// num aumenta em 1
	show_debug_message(num);////Exibe 1
}

#endregion

//Estruturas
#region struct (estruturas)
/*estrutura = 
{
	nome   : "Juca", //termina com virgula
	idade  : 50,
	status : "Bom",
	level  : 1,
	foto   : spr_player, //Termina nao precisa coloca virgula
	
	apresenta : function()
	{
		show_message(nome);	
	},
	
	ganha_level : function(_n)
	{
		var _qtd = _n == undefined ? 1 : _n;
		level += _qtd;	
	},
	
		
	
};
*/
//show_message(estrutura.nome);
//estrutura.apresenta();
//Ganhando 2 level
//estrutura.ganha_level(2);
//show_message(estrutura.level);



#endregion






