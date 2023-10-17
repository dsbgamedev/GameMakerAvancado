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
move_and_collide(velh, velv, all, 4);









