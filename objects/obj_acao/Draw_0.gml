/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_color(c_black);
draw_set_halign(1);
draw_set_valign(1);
//Mudando a cor ao passar o mouse por cima
if(position_meeting(mouse_x, mouse_y, id)) 
{
	image_blend = c_gray;
}
else
{
	image_blend = c_white;	
}

draw_text(x,y,direcao);
draw_set_color(-1);
draw_set_halign(-1);
draw_set_valign(1);





