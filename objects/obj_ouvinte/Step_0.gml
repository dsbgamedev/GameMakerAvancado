/// @description Insert description here
// You can write your code in this editor

//Definindo a posição do meu listener
audio_listener_position(x, y, 0);

if(mover)
{
	x = mouse_x;
	y = mouse_y;	
}

if(keyboard_check_pressed(vk_tab))
{
	mover = !mover;
}










