/// @description Insert description here
// You can write your code in this editor

//DS STACK - PILHA
//LIFO - Last in First Out  - Ultimo a entrar é o primeiro a sair
//DS QUEUE - FILA 
//FIFO - First In First Out - Primeiro a entrar é o primeiro a sair
//Se precisar sair de qualquer outra ordem, uso o DS_LIST


//Criando a minha pilha
pilha = ds_stack_create();

lista =  ds_list_create();

//Fazer ele executar o ultimo comando ao apertar enter

//Para adicionar informações em uma pilha, nos usamos o push
//ds_stack_push(pilha, "Cachorro", "Gato", "Pato", "Minhoca");

//ds_list_add(lista, "Cachorro", "Gato", "Pato", "Minhoca");

//Tirando o item da pilha sempre que eu apertar enter
//E fazendo este item da pilha, também sair da ds_list
remove = function()
{
	//Checando se eu apertei o enter
	if(keyboard_check_released(vk_enter))
	{
		//show_message(ds_stack_pop(pilha));
		var _item = ds_stack_pop(pilha);
		//Removendo esse cara da minha ds_list
		var _pos = ds_list_find_index(lista, _item);
		//Deletando ele da lista
		ds_list_delete(lista, _pos);	
	}
}

//Função de movimento
move_dir = function(_dir)
{
	//Movendo com base na direção
	x += lengthdir_x(64, _dir);
	y += lengthdir_y(64, _dir);
}

//Adiciona na lista alguma coisa
///@function adiciona_pilha(Item a ser adicionado)
 adiciona_pilha = function(_coisa, _texto)
{
	//Salvando a in formaçao em uma lista para eu poder ver
	ds_list_add(lista, _texto);
	ds_stack_push(pilha, _coisa);
}




