/// @description Insert description here
// You can write your code in this editor

img	= 0;

//Checando se algum tile em cima de mim
	if (place_meeting(x, y - 1, obj_tile)) img += 1;

	//Checando se tem alguem na direita
	if (place_meeting(x + 1, y, obj_tile)) img += 2;

	//Checando se tem alguem para baixo
	if (place_meeting(x, y - 1, obj_tile)) img += 4;

	//Checando se tem alguem na esquerda
	if (place_meeting(x - 1, y, obj_tile)) img += 8;

image_index = img;











