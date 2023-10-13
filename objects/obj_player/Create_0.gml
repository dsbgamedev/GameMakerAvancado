/// @description Insert description here
// You can write your code in this editor

vel  = 5;
velh = 0;
velv = 0;


//Criar função detectar gamepad
checa_gamepad = function()
{
	//Rodar por todos os possiveis controles e ver se algum 
	//esta conectado
	//gamepad_is_connected();
	//show_message(gamepad_get_device_count());
	var _qtd     = gamepad_get_device_count();
	var _gamepad = 0;
	
	for(var i = 0; i< _qtd; i++)
	{
		//Se o slot(a entrada) atual estiver conectada, eu aviso no meu
		//Array de controles
		global.controles[i] = gamepad_is_connected(i);
		if(global.controles[i])
		{
			_gamepad++;	
		}
	}
	
	if(_gamepad)
	{
		//Definindo a deadzone do axis
		gamepad_set_axis_deadzone(0, .2);
	}
	
	return _gamepad
	//show_message(global.controles);
	//show_debug_message(global.controles);
}

global.gamepad = checa_gamepad();

controla = function()
{
	//global.gamepad = checa_gamepad();
	if(keyboard_check_pressed(vk_enter))
	{
		//global.gamepad = false;
		global.gamepad = !global.gamepad;
	}
	
	show_debug_message("kkkkkkkk");
	
	//Se o gamepad esta conectado, eu uso o gamepad
	if(global.gamepad)
	{
		controla_gamepad();	
	}
	else
	{
		controla_keyboard();	
	}
}

controla_keyboard = function()
{
	//if(keyboard_check(vk_shift)) show_debug_message("aaaaaaaaaa");
	//se mover para as direções
	show_debug_message("teclado");
	var _up, _down, _left, _rigth;
	
	_up    = keyboard_check(vk_up);
	_down  = keyboard_check(vk_down);
	_left  = keyboard_check(vk_left);
	_rigth = keyboard_check(vk_right);
	
	velh = (_rigth - _left) * vel;
	velv = (_down - _up)    * vel;

}

controla_gamepad = function()
{
	//show_debug_message("Gamepad");
	//gamepad_axis_value();
	
	var _velh = gamepad_axis_value(0, gp_axislh);
	var _velv = gamepad_axis_value(0, gp_axislv);
	
	//if(_velh > 0)
	//{
	//	_velh = ceil(_velh);	
	//}
	//else
	//{
	//	_velv = floor(_velh);
	//}
	
	//_velv = _velv > 0 ? ceil(_velv) : floor(_velv);
	
	velh = _velh * vel;
	velv = _velv * vel;	
}

checa_gamepad();











