/// @description Insert description here
// You can write your code in this editor


//Pegando os inputs do usuário
var _rigth, _left, _jump, _chao;

_rigth = keyboard_check(vk_right);
_left  = keyboard_check(vk_left);
_jump  = keyboard_check(vk_space);


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
	//Zerando o velv
	velv = 0;
}
//show_debug_message(velv);

//Sistema de movimentação e colisão
move_and_collide(velh, velv, obj_block);









