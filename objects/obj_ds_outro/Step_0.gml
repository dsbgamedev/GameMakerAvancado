/// @description Insert description here
// You can write your code in this editor
//Fazer ele executar o ultimo comando ao apertar enter

//Quando eu apertar enter ele vai começar a executar as ações da pilha
//Uma depois da outra em um intervalo
//Checando se eu apertei enter E se o alarme foi ativado

if(keyboard_check_released(vk_enter) && alarm[0] <= 0)
{
	alarm[0] = room_speed / 2;
}







