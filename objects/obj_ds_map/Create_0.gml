/// @description Insert description here
// You can write your code in this editor

//DS MAP é uma estrutura bem parecida com as ds list
//Porem ao invés de se ordenar por indices (0, 1, 2, 3, 4)
//Ela se ordena por chaves (nomes)

//Nome
//Idade
//Status
//Level
//Foto

mapa = ds_map_create();

//Adicionando o nome

ds_map_add(mapa, "nome","Anastacia");
//Adicionando a idade
ds_map_add(mapa, "idade",14);
//Status
mapa[? "status"] = "Bom";
//Level
mapa[? "level"]  = 1;
//Foto
mapa[? "foto"]   = spr_player;

show_message(ds_map_find_value(mapa, "nome"));











