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

//Para adicionar informações em uma pilha, nos usamos o push
ds_stack_push(pilha, "Cachorro", "Gato", "Pato", "Minhoca");

ds_list_add(lista, "Cachorro", "Gato", "Pato", "Minhoca");






