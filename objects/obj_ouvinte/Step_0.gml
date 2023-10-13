/// @description Insert description here
// You can write your code in this editor

//Definindo a posição do meu listener
audio_listener_position(x, y, 0);

if(mover)
{
	x = mouse_x;
	y = mouse_y;	
	
	//Se eu estou me movendo, então o som vai ser afetado
	if(x != xprevious || y != yprevious)
	{
		//Se eu estou me movendo
		audio_listener_velocity(10,10,0);
	}
}

if(keyboard_check_pressed(vk_tab))
{
	mover = !mover;
}










