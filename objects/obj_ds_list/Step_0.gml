/// @description Insert description here
// You can write your code in this editor

//Fazendo a lista ficar aleatoria smepre que eu apertar enter

if(keyboard_check_released(vk_enter)) ds_list_shuffle(meses);

//Se eu apertar a setinha para baixo, o indice sobe
if(keyboard_check_released(vk_down) || keyboard_check_released(ord("S"))
	&& indice < ds_list_size(meses)-1)
{
	indice ++;	
	//indice %= ds_list_size(meses);
}
//Se eu apertar a setinha para cima, o indice diminui
if(keyboard_check_released(vk_up)|| keyboard_check_released(ord("W"))) indice--; 
//O indice NÃO pode passar do tamanho da lista e nem ser menor do que 0

//Se o usuario apertar delete, ele apaga o item da lista
if(keyboard_check_released(vk_delete))
{
	//Deletando o indice da lista correspondente a variavel indice
	ds_list_delete(meses, indice);
}

//ao apertar end vai pro final da lista
if(keyboard_check_released(vk_end)) indice = ds_list_size(meses)-1; 
//ao apertar home vai pro começo da lista
if(keyboard_check_released(vk_home)) indice = 0;

//Garantindo que o valor do indice vai ficar no intervalo correto
indice = clamp(indice, 0, ds_list_size(meses)-1)







