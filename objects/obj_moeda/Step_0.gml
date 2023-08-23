/// @description Insert description here
// You can write your code in this editor

//Alerando o image_xscale dele
//tempo += .1;
//image_xscale = sin(_temp);
//var _temp = 5 * (get_timer() / 1000000);
				//Altero a frequencia da onda
		//Aumento Escala		
var _onda = 10 * sin(10 * get_timer() / 1000000);//Um valor entre -1 e 1

x += _onda;

var _fire = mouse_check_button_released(mb_right);

if(_fire)
{
	//Criando o tiro
	var _tiro = instance_create_layer(mouse_x,mouse_y,"Instances",obj_tiro);
}










