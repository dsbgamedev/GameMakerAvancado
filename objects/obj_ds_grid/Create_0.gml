/// @description Insert description here
// You can write your code in this editor

//DS GRID é um vetor 2D com mais recursos
size = 48;
cols = room_width div size;
lins = room_height div size;


//Criando nosso ds grid | w = colunas h = linhas
//Descobrinco quantas colunas e linhas eu tenho que ter
gride = ds_grid_create(cols, lins);

posicoes = ds_map_create();
posicoes[? "x1"] = 0;
posicoes[? "y1"] = 0;
posicoes[? "x2"] = 0;
posicoes[? "y2"] = 0;

//Ao preencher a minha grid eu vou "limpar" ela
ds_grid_clear(gride,0);

//show_message(gride[# 2,2]);

//Vetor do alfabeto
alfabeto = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P",
		    "Q","R","S","T","U","V","W","X","Y", "Z"];

//Criando uma função para preencher a grid
preenche_grid = function()
{
	//Rodar pelas colunas
	for(var i=0; i< cols; i++)
	{
		//Acessando as linhas
		for(var j=0; j< lins; j++)
		{
			//Acessando as celulas
			//Definindo o valor delas
			//Pegando um valor aleatorio do alfabeto atravez do irandom(array_length(alfabeto)
			gride[# i,j] = alfabeto[irandom(array_length(alfabeto)-1)];// -1 porque o vetor começa a contar do zero
		}
		
	}
	
	
}

desenha_gride = function(_gride)
{
	var _cols = ds_grid_width(_gride);
	var _lins = ds_grid_height(_gride)
	for(var i=0; i< _cols; i++)
	{
		for(var j=0; j< _lins; j++)
		{
			
			var _x1, _x2, _y1, _y2, _cor, _valor;
			_x1    = i * size;
			_y1    = j * size;
			_x2    = (i + 1) * size;
			_y2    = (j + 1) * size;
			_cor   = c_yellow;
			_valor = _gride[# i, j];
			
			//Alterando a cor com base na posição do mouse
			var _mouse_x = mouse_x div size;
			var _mouse_y = mouse_y div size;
			
			//Se o mouse x for igual coluna, && mouse y for igual a linha então eu mudo a cor
			if(_mouse_x == i && _mouse_y == j ) _cor = c_orange;
			
			
			draw_rectangle_color(_x1,_y1,_x2,_y2,_cor,_cor,_cor,_cor ,false);
			draw_rectangle_color(_x1,_y1,_x2,_y2,c_black,c_black,c_black,c_black ,true);
			
			//Desenhnado o texto
			//Alinhando o texto
			draw_set_halign(1);
			draw_set_valign(1);
			draw_set_color(c_black);
			_x1 = i * size + size / 2;
			_y1 = j * size + size / 2;
			draw_text(_x1,_y1,_valor);
			draw_set_color(c_white);
			draw_set_halign(-1);
			draw_set_valign(-1);			
		}	
	}
}

//Funcao de selecao
seleciona_gride = function()
{
	var _mouse_x = mouse_x div size;
	var _mouse_y = mouse_y div size;
	//Checando se o mouse clicou	
	if(mouse_check_button_pressed(mb_left))
	{
		//Definindo a posição inicial
		posicoes[? "x1"] = _mouse_x; 
		posicoes[? "y1"] = _mouse_y; 
	}
	
	//Checando a posição final
	if(mouse_check_button_pressed(mb_left))
	{
		//Definindo a posição fnicial
		posicoes[? "x2"] = _mouse_x; 
		posicoes[? "y2"] = _mouse_y; 
	}
	
}

//Preenchendo a gride
preenche_grid();





