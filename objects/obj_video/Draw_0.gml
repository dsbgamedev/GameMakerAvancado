/// @description Insert description here
// You can write your code in this editor

var _video   = video_draw();
var _status  = video_get_status();
var _momento = video_get_position();
//show_debug_message(_status);

//Seo video passou um pouquinho do começo e eu devo pausar
if(_momento > 100 && pausado)
{
	video_pause();
	
	//Não preciso mais pausar ele
	pausado = false;
}

switch(_status)
{
	//Caso não tenha video
	case video_status_closed: 
		show_debug_message("Nao tem video"); 
		//Carregando o video
		video_open("marioRun.mp4");
		break;
		
	case video_status_playing:
		//O video esta tocando
		//Então eu desenho ele
		draw_surface_stretched(_video[1], 0, 0, room_width, room_height);
		//Despausando o video
		if(keyboard_check_pressed(vk_space))
		{
			video_pause();
		}
		break;
		
	case video_status_preparing:
		//Enquanto ele esta preparando o video eu vou pausar ele
		//video_pause();
		break;
		
	case video_status_paused:
		//Eu desenho ele e permito qu o usuario de play no video
		draw_surface_stretched(_video[1], 0,0,room_width, room_height);
		//Despausando o video
		if(keyboard_check_pressed(vk_space))
		{
			video_resume();
		}
		break;
		
}








