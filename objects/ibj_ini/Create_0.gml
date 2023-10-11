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
	//ds_grid_width();
	
}

carrega_nome = function()
{
	ini_open("save.ini");
	//Pegando o nome que foi salvo
	nome = 	ini_read_string("dados", "nome", "");
	ini_close();
	
}

salva_grid = function ()
{
	ini_open("save.ini");
	
	//Acessar o grid
	with(obj_ds_grid)
	{
		//Salvando a minha grid em uma String
		var _grid = ds_grid_width(gride);
		//Escrevendo a grid no ini
		ini_write_string("grid", "grid", _grid);
		
	}
	
	ini_close();
}

carrega_grid = function()
{
	ini_open("save.ini");
	
	//Passando a grid para a DS da grid
	var _grid = ini_read_string("grid", "grid", "");
	
	with(obj_ds_grid)
	{
		//Passando a grid para as ds grid
		ds_grid_read(grid, _grid);
		
	}
	
	
	ini_close();
}








