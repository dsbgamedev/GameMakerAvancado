/// @description Insert description here
// You can write your code in this editor

//Pegando a minha posição
pos += delta_time / 1000000 / 10;
pos %= 1;

show_debug_message(pos);

val = animcurve_channel_evaluate(curva,pos);

//Usando o valor da animation curve para definir minha cor
image_blend = make_color_hsv(val,255,255);








