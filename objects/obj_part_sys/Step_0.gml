/// @description Insert description here
// You can write your code in this editor

//Criando uma explosao de particulas quando o mouse clicar

if(mouse_check_button(mb_left))
{
	//Deixando o tamanho alterar de forama aleatoria
	 //part_type_size(part, 0.01, 0.1,random_range(-0.01, 0.01),0);
	
	//Definindo a região dele
	part_emitter_region(global.part_sys, part_em, mouse_x -20, mouse_x + 20, 
	mouse_y - 10, mouse_y + 10, ps_shape_diamond, ps_distr_gaussian);
	part_emitter_burst(global.part_sys,part_em, part,50);
}










