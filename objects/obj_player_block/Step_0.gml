/// @description Insert description here
// You can write your code in this editor


//Pegando os inputs do usuário
var _rigth, _left, _jump, _chao;

_rigth = keyboard_check(vk_right);
_left  = keyboard_check(vk_left);
_jump  = keyboard_check_pressed(vk_space);


//Checando se no meu pé mais um pixel esta tocando no chão
_chao = place_meeting(x, y + 1, obj_block);

//Dando a velocidade horizontal
velh = (_rigth - _left) * max_velh;


//Aplicando a gravidade SE  eu estiver no ar(SE ele não esta no chão)
if(!_chao)
{
	velv += grav;
}
else
{
	//Zerando o velv quando ele estiver no chão
	velv = 0;
	
	//Fazendo ele pular ao apertar o botão de pulo
	if(_jump)
	{
		velv = -max_velv;
	}
	
	
}
//show_debug_message(velv);

//Sistema de movimentação e colisão
var _col = move_and_collide(velh, velv, all, 12);

//Quando o vetor col nao for vazio, eu checo se eu colidi com a rampa

if(array_length(_col) > 0) // Array_length tamanho do nosso vetor
{
	var _nome = object_get_name(_col[0].object_index);
	//show_message(_nome);
	
	//Se eu colidir com a rampa, eu zero o velv
	if(_nome == "obj_rampa" )
	{
		velv = 0;
	}
	
	//Plataforma movel
	if(_nome == "obj_plat_movel")
	{
		velv = 0;
	}

}







