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
	
	return _gamepad
	//show_message(global.controles);
	//show_debug_message(global.controles);
}

global.gamepad = checa_gamepad();

conrtola = function()
{
	//global.gamepad = checa_gamepad();
	/*if(keyboard_check_pressed(vk_enter))
	{
		global.gamepad = false;
	}*/
	
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

conrtola_keyboard = function()
{
	//if(keyboard_check(vk_shift)) show_debug_message("aaaaaaaaaa");
	//se mover para as direções
	
}

conrtola_gamepad = function()
{
	
}

checa_gamepad();










