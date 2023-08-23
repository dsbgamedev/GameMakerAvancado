/// @description Insert description here
// You can write your code in this editor

//Fazer o triangulo girar om base no angulo
ang++;

//Quero desenha 4 triangulo



//Desenhando o meu triangulo
var _x1,_y1,_x2,_y2,_x3,_y3, _tam = 150;
for(var i=0; i < 4; i++)
{
	//
	var _novo_ang = i *90;
	
	//Definindo a posição inicial do triangulo
	_x1 = mouse_x ;
	_y1 = mouse_y ;

	//x2 e y2 vai ser a posição inicial
	//Mais a distância (o tamanho) com base no angulo
	_x2 = _x1 + lengthdir_x(_tam, ang + _novo_ang);
	_y2 = _y1 + lengthdir_y(_tam, ang + _novo_ang);
	
	
	//x3 e y3 vai ser a posição inicial
	//Mais a distancia (o tamanho) com base no angulo
	//E a dierença entre o angulo do ponto 2 e do ponto 3
	_x3 = _x1 + lengthdir_x(_tam, ang + 45 + _novo_ang);
	_y3 = _y1 + lengthdir_y(_tam, ang + 45 + _novo_ang);

	draw_triangle_color(_x1,_y1,_x2,_y2,_x3,_y3, c_yellow,c_red,c_orange,false);

}






