/// @description Insert description here
// You can write your code in this editor

//Contrutor
#region construtor

///@function cria_personagem(nome, idade, status, level, foto)
cria_personagem = function(_nome, _idade, _status, _level, _foto) constructor
{
	/*static*/ nome   = _nome;//essa linha só vai ser executado uma vez
	idade  = _idade;
	status = _status;
	level  = _level
	foto   = _foto;	
	static larg   = 250;
	static alt   = 120;
	
	
	//Variavel pos X e pos Y, que inicia no mieo da tela
	static pos_x = room_width / 2;
	static pos_y = room_height / 2;
	
	//Um método que muda o valor do pos x e posy com base no clique e posição do mouse
	static movendo = function()
	{
		//Fazendo o posx e posy irem para a posição do mouse
		//Checar se o mouse_x esta dentro de mim
		var _pos_x = mouse_x == clamp(mouse_x, pos_x - larg / 2, pos_x + larg / 2);
		var _pos_y = mouse_y == clamp(mouse_y, pos_y - larg / 2, pos_y + larg / 2);
		if(mouse_check_button(mb_left) && _pos_x && _pos_y)
		{
			pos_x = mouse_x;
			pos_y = mouse_y;
		}
	}
	
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
		var _xx		= pos_x; /* room_width / 2;*/
		var _yy		= pos_y;  /*room_height / 2;*/
		var _xscale = larg / sprite_get_width(spr_moldura);//achando a escala do retangulo
		var _yscale = alt / sprite_get_height(spr_moldura);
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
		_x1 = _xx - larg / 2 + _marg_x;
		_y1 = _yy - alt / 2 + _marg_y;
	
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
personagem3 = new cria_personagem("Jose", 10,"Ruim", 2, spr_player);
personagem4 = new cria_personagem("Maria", 60,"Ruim", 2, spr_player);
personagem5 = new cria_personagem("Ana", 40,"Ruim", 2, spr_player);
//personagem2.muda_nome("Maravilha");

//Crie um vetor com um personagem, crie 5 personagens

//Crie um vetor com os personagens
personagens = [personagem1,personagem2,personagem3,personagem4,personagem5];

qtd_personagens = 1;

//Eu aperto enter e ele coloca uma personagem na tela


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






