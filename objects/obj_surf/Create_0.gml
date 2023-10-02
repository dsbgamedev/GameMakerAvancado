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
	var _mouse_click =mouse_check_button_pressed(mb_left);
	
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

//Cria sangue
cria_sangue = function()
{
	//Checando se o mouse clicou
	var _mouse_click = mouse_check_button_released(mb_left);
	
	if(_mouse_click)
	{
		//Criando varios
		repeat(irandom_range(5, 25))
		{
			//Criando o sangue
			instance_create_layer(mouse_x, mouse_y, layer, obj_sangue);
		}
	}
	
}

//Desenha sangue
desenha_sangue = function()
{
	//Checando se o sangue existe
	if(instance_exists(obj_sangue))
	{
		//Definindo a surface
		if(surface_exists(surf))
		{
			surface_set_target(surf)	
		
			//Desenhando o sangue nela
			with(obj_sangue)
			{
				draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);	
			}
			
			//Resetando a surface
			surface_reset_target();
			
		}
		
	}
}

//Desenhar luz
desenha_luz = function()
{
	//Checar se a Surface existe
	if(surface_exists(surf))
	{
		//Definir o meu alvo
		surface_set_target(surf);
		//Limpando a minha surface
		draw_clear_alpha(c_black, 1);
		
		//Mudar o blendmode desse desenho
		gpu_set_blendmode(bm_subtract);		
		//Desenhando a luz ou a mascara
		var _variavel = random_range(-0.05, 0.05);
		draw_sprite_ext(spr_luz, 0, mouse_x, mouse_y,2 + _variavel,2 + _variavel,0,c_white, 1);
		
		//Resetar o blendmode
		gpu_set_blendmode(bm_normal);		
		
		surface_reset_target();
		
	}
}

#endregion









