/// @description Insert description here
// You can write your code in this editor

//INI é um arquivo onde você pode slavar os seus dados
// O arquivo ini tem uma estrutura simples
//Em geral eu posso salvar os valores como string ou real (números)
//Primeiro eu abro meu arquivo ini
//Se o arquivo que eu estou tentando abrir noa existe, ele cria o arquivo para mim
ini_open("save.ini");
//Escrevo ou leio os dados

//Salvando meu nome
ini_write_string("dados", "nome", "Douglas");


//Fecho o arquivo ini
ini_close();










