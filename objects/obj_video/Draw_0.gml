/// @description Insert description here
// You can write your code in this editor

var _video = video_draw();
var _status = video_get_status();
//show_debug_message(_status);

switch(_status)
{
	//Caso não tenha video
	case video_status_closed: 
		show_debug_message("Nao tem video"); 
		//Carregando o video
		video_open("marionRun.mp4");
		break;
}








