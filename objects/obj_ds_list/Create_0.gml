/// @description Insert description here
// You can write your code in this editor


//Estruturas de dados
//DS - Data Structure
//No game maker, elas nunca são deletadas sozinhas 
//Então você precisa deletar ela manualmente
//O evento "ideal" é o cleanup
//DS_LIST - É basicamente um vetor 1D com funcionalidades a mais
//Se voce precisar de um vetor com funcionalidade, use uma ds list

//Criando uma ds_list para os meses do ano
meses = ds_list_create();

//Preenchendo a minha lista
ds_list_add(meses,"Janeiro", "Fevereiro");

//show_message(ds_list_find_index(meses, "Fevereiro"));//Passando a lista

show_message(ds_list_find_value(meses, 1));//passando a lista por posição







