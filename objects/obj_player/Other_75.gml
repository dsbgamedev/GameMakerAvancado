/// @description Insert description here
// You can write your code in this editor

//show_message("rodei");
//Controle não reconheceu
//Salvando a minha dsmap

//Achando o tipo de evento e qual a ação dele
var _evento = ds_map_find_value(async_load, "event_type");

//show_message(_evento);

switch(_evento)
{
	case "gamepad discovered":
	     //show_message("Achei o controle!");
		 //Falando qual porta do controle esta usando
		 var _porta		= ds_map_find_value(async_load, "pad index");
		 global.p1		= _porta;
		 global.gamepad = true;
		 gamepad_set_axis_deadzone(0, .2);
		 show_message(_porta);
		 
		 break;
		
	case "gamepad lost":
		 show_message("Perdi o controle!");
		  //Voltar a usar o teclado, ou, pausar o jogo....
		 break;		
}	












