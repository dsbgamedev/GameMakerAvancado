/// @description Insert description here
// You can write your code in this editor

//Sempre que eu apertar espaço ele toca um som

if(keyboard_check_pressed(vk_space))
{
	audio_play_sound_on(emit, snd_pavao, 0,1);
	
	//Checando se o jogador esta proximo de mim
	var _dist = point_distance(x,y, obj_ouvinte.x, obj_ouvinte.y);
	
	if(_dist <= 20)
	{
		show_message("Achouuuuu!!!!");
	}
}










