/// @description Insert description here
// You can write your code in this editor

nome = "";

//INI é um arquivo onde você pode slavar os seus dados
// O arquivo ini tem uma estrutura simples
//Em geral eu posso salvar os valores como string ou real (números)
//Primeiro eu abro meu arquivo ini
//Se o arquivo que eu estou tentando abrir noa existe, ele cria o arquivo para mim
//ini_open("save.ini");
//Escrevo ou leio os dados
//Salvando meu nome
//ini_write_string("dados", "nome", "Douglas");
//Fecho o arquivo ini
//ini_close();

salva_nome = function()
{
	nome = get_string("Digite seu nome: ", "");
	
	//Escrevendo o nome no ini
	ini_open("save.ini");
	ini_write_string("dados", "nome", nome);
	ini_close();
	
	show_message("Feito!");
}

carrega_nome = function()
{
	ini_open("save.ini");
	//Pegando o nome que foi salvo
	nome = 	ini_read_string("dados", "nome", "");
	ini_close();
	
}










