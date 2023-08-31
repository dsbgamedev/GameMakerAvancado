/// @description Insert description here
// You can write your code in this editor

//Executar os comandos da pilhas
//Apenas se a pilha tem valor
//Sempre que eu der um pop na pilha, eu quero apagar o ultimo valor da lista
//Checando se a pilha nao esta vazia
if(ds_stack_size(pilha) > 0)
{
	var _dir = ds_stack_pop(pilha);
	//Deletando o item da lista
	ds_list_delete(lista,ds_list_size(lista) - 1);

	move_dir(_dir);

	//Reiniciar o alarme apenas se eu ainda nao terminei a pilha

	alarm[0] = room_speed / 2;
}



