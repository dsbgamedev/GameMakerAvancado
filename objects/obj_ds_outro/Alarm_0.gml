/// @description Insert description here
// You can write your code in this editor

//Executar os comandos da pilhas
//Apenas se a pilha tem valor
//Sempre que eu der um pop na pilha, eu quero apagar o ultimo valor da lista
//Checando se a pilha nao esta vazia
if(/*ds_stack_size(pilha)*/ds_queue_size(fila) > 0)
{
	//var _dir = ds_stack_pop(pilha);
	//Pegando a informacao da fila
	var _dir = ds_queue_dequeue(fila);
	//Deletando o item da lista
	//Fazer com que ele delete o primeiro item da lista
	//ds_list_delete(lista,ds_list_size(lista) - 1);
	ds_list_delete(lista,0);
	//ds_queue_clear(fila);

	move_dir(_dir);

	//Reiniciar o alarme apenas se eu ainda nao terminei a pilha
	alarm[0] = room_speed / 2;
}



