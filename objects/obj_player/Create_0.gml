/// @description Insert description here
// You can write your code in this editor


//Criar função detectar gamepad
checa_gamepad = function()
{
	//Rodar por todos os possiveis controles e ver se algum 
	//esta conectado
	//gamepad_is_connected();
	//show_message(gamepad_get_device_count());
	var _qtd = gamepad_get_device_count();
	for(var i = 0; i< _qtd; i++)
	{
		//Se o slot(a entrada) atual estiver conectada, eu aviso no meu
		//Array de controles
		global.controles[i] = gamepad_is_connected(i);
	}
	
	//show_message(global.controles);
	//show_debug_message(global.controles);
}

checa_gamepad();










