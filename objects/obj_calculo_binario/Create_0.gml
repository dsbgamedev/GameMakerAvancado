/// @description Insert description here
// You can write your code in this editor

//Binarios
//0 e 1
//Com 1 casa eu represento 2  valores,  0 e 1
//Com 1 casa eu represento 4  valores,  0, 1, 2 e 3
//Com 1 casa eu represento 8  valores,  0, 1, 2, 3, 4, 5, 6 e 7
//Com 1 casa eu represento 16 valores,  0 a 15
//Com 1 casa eu represento 32  valores, 0 a 1
//Com 1 casa eu represento 64  valores, 0 a 31

image_speed = 0;
img			= 0;

//Criando a grid
size  =64;

//Deixar a imagem parada

//impedir que ele crie um tile encimad o outro

//Fazer ele usar a imagem correta no create tile


criatile = function()
{
	//Desenhando a sprite do tile na gride da posição do mouse
	//Pegadno a posição do mouse na grid em pixels
	var _mouse_x = (mouse_x div size) * size;
	var _mouse_y = (mouse_y div size) * size;

	//show_debug_message(_mouse_x);

	//Desenhando a sprite no x do mouse dentro da grid
	draw_sprite(spr_player, 0,_mouse_x, _mouse_y);

	//Quando eu clicar eu crio o objeto Tile na posição X e Y do mouse dentro da grid
	var _mouse_click = mouse_check_button(mb_left);
	//Checar se nao estou por cima do tile
	var _mouse_livre = position_meeting( mouse_x, mouse_y, obj_tile);
	if( _mouse_click && _mouse_livre)
	{
		//Criando o tile
		instance_create_layer(_mouse_x,_mouse_y,"Tiles",obj_tile);
		//Rodando o user event do objeto Tile
		if(instance_exists(obj_tile))
		{
			with(obj_tile)
			{
				//Esse código, roda dentro de TODOS os objetos tile
				event_user(0);
			}
		}
	}
	
}

/*
//Checando se algum tile em cima de mim
	if (place_meeting(x, y - 1, obj_calculo_binario)) img += 1;

	//Checando se tem alguem na direita
	if (place_meeting(x + 1, y, obj_calculo_binario)) img += 2;

	//Checando se tem alguem para baixo
	if (place_meeting(x, y - 1, obj_calculo_binario)) img += 4;

	//Checando se tem alguem na esquerda
	if (place_meeting(x - 1, y, obj_calculo_binario)) img += 8;

	image_index = img;





