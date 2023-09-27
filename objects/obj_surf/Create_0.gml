/// @description Insert description here
// You can write your code in this editor



//Uma sufsace é uma superficie
//Criando a minha surface
surf = surface_create(room_width, room_height);

//Eu preciso desenhar a surface em um draw event

//Porém eu posso desenhar NA surface em qualquer evento

//Criando o metodo para desenha a minha surface
#region DESENHA SURFACE
desenha_surface = function()
{

	//Checando se a surface noa existe
	if(!surface_exists(surf))
	{
	
		//Crio a surface
		surf = surface_create(room_width,room_height);
		//Definir o meu alvo
		surface_set_target(surf);
		//Limpar a surface
		draw_clear_alpha(c_black, 0);
		//Resetar o meu alvo(voltando a ver a surface correta)
		surface_reset_target();
	}
	//Se a surface existe, então desenha ela
	else
	{
		draw_surface(surf,0,0);	
	}

}
#endregion

#region DESENHANDO NA SURFACE
desenhando_na_surface = function ()
{

	//Sempre que o mouse clicar eu vou desenha uma bola vemerlha
	var _mouse_click = mouse_check_button_pressed(mb_left);
	
	if(_mouse_click)
	{
		//Dsenhando na surface
		if(surface_exists(surf))
		{
			//Definindo meu alvo
			surface_set_target(surf);
			draw_set_color(c_red);
			
			//Desenhnado a bolinha ao redor do mouse
			draw_circle(mouse_x, mouse_y, 20, false);
			
			draw_set_color(c_white);
			//Resetando o alvo
			surface_reset_target();
		}
	}

}
#endregion









