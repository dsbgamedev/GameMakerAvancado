/// @description Insert description here
// You can write your code in this editor


//Checando se eu cliquei
if(mouse_check_button_released(mb_left))
{
	//Definir meu destino e minha posição atual
	dest_x   = mouse_x;
	dest_y   = mouse_y;
	pos_x    = x;
	pos_y    = y;
	pos		 = 0;
}

//Pegando o meu valor com base na posição SE o pos é menor do que 1
if(pos < 1) pos += delta_time / 1000000 / 2;

val = animcurve_channel_evaluate(curva, pos);

//Fazendo ele ir para a osição do destino
//Salvando distância entre posição atual e o destino
var _dist_x = dest_x - pos_x;
var _dist_y = dest_y - pos_y;

//Indo para o destino
x = pos_x + (_dist_x * val);
y = pos_y + (_dist_y * val);


/*


//Pegando a minha posição
/*
pos += delta_time / 1000000 / 5;
pos %= 1;

show_debug_message(pos);

val = animcurve_channel_evaluate(curva,pos);

//Usando o valor da animation curve para definir minha cor
image_blend = make_color_hsv(val,255,255);








