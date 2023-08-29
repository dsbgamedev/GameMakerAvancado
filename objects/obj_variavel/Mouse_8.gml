/// @description Insert description here
// You can write your code in this editor

//WITH -COM
//Ele permiti a execução de um codigo dentro de outra isntancia
with(obj_teste)
{
	//Todo este código vai executar de dentro do objeto teste
	bom_dia();
	
	//Matar o cara que me chamou
	//Para acessar a instancia que de fato ta rodando o codigo
	//Usa-se a palavra other
	other.morrendo();		//Aqui é o objeto variavel
}








