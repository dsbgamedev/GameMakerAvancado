/// @description Insert description here
// You can write your code in this editor

#region variaveis
velh     =  0;
velv     =  0;
max_velh =  3;
max_velv =  3;
acel     = .01;
satura   = 0;
vel      = 5;


#endregion

#region explicações
//MAX - Retorna o maior numero em um conjunto
//MIN - Retorna o menor numero em conjunto 
var _max = max(1,3,6,2,9,1,2,4,8);
//show_message(_max);
var _min = min(1,3,6,2,-9,1,2,4,8);
//show_message(_min);

//Funções de arredondamento : ceil, floor, round
//CEiL  - Arredonda o nunmero para cima, 2.01		       = 3
//Floor - Arredonda o numero para baixo, 2.99		       = 2
//Round - Arredonda para o numero inteiro mais proximo 2.9 = 3

//Criar uma variavel tempo com valor de 5
//Vão diminuir o tempo de pouquinho em pouquinho
//Vão exibir o tempo como um texto
//Porém o texto exibido vai ser um número inteiro
//vspeed = 1;
tempo = 0;
//FRAC - Retorna a frção de um número
//var _teste = frac(2.98);

//delta_time - retorna o tempo em microseundos entre um fram e outro
//Ele roda independente dos frames do jogo

//get_time - Retorna o tempo em microsegundos que o jogo esta em execução
//Se quiser saber o tempo que o jogo esta rodando chamo a dunção get_time
/*
- Segundos vai guardar quantos segundos passaram
- Minutos vai guardar quantos minutos passaram
- Horas vai guardar quantas horas passaram
*/

segundos = 0;  //get_time divididos por 1 milhao, segundo chegou em 60 ele vai para 0
minutos  = 0; //Segundos divididos por 60, minutos chegou em 60 ele vai para 0
horas    = 0; //Minutos divididos por 60, horas chegou em 24 vai para 0
dias     = 0; //Horas divididas por  24

//SIGIN - Sinal, ela retorna "sinal" de um numero
//Se o numero for positivo ela retorna  1 
//Se o numero for negativo ela retorna -1 
//Se o numero for zero ela retorna 0
//var _sigin = sign(-388);//pode usar essa função para ver se o numero é positivo, negativo ou zero

//show_message(_sigin);

//ABS - Retorna valor absoluto de um numero, ela retorna o número positivo
//Checando a ditancia no eixo X do mouse para o coiso

//CLAMP - Checa se um valor esta dentro de um intervalo
//Se o valor não estiver dentro de um intervalo  
//Ele traz o valor para dentro do intervalo e retorna o novo valor(valor entre o minimo ou maximo)
//Se o valor estiver dentro do intervalo ele retorna o valor

//
//var _clamp = clamp(5,0,10);
//show_message(_clamp);

//LERP - Retorna a porcentagem de diferença entre dois valores
//var _lerp = (0,10,.5);
//show_message(_lerp);

//SIN e COS - seno e cosseno
//sin para eixo y e cos para o eixo x, ambos retorno valor entre -1 e 1
//var _sin = sin(33);
//show_message(_sin);
testao = 0;

//lenghtdir x trata do eixo X
//lenghtdir y trata do eixo Y
//Qual e a distancia que eu tenho que estar no meu eixo x
//Se a distancia for 100 e o meu angulo é zero
//show_message(lengthdir_x(100,90));

dir = 0;

#endregion

#region funções

exibe_tempo = function()
{
	//Centralizando meu texto
	draw_set_halign(1);
	draw_set_valign(1);
	//var _fracao = frac(tempo);
	var _fracao = 1;
	
	//Desenhando meu tempo transparente com base no tempo restante daquele segundo
	draw_set_alpha(_fracao);
	draw_text_transformed(room_width / 2,room_height / 2,tempo, _fracao * 3, _fracao * 3, 0);
	draw_set_alpha(1);
	draw_set_halign(-1);
	draw_set_valign(-1);
}

exibe_jogo_tempo = function()
{
	//Centralizando meu texto
	draw_set_halign(1);
	draw_set_valign(1);
	//var _fracao = frac(tempo);
	var _fracao = 1;
	
	//Desenhando meu segundo transparente com base no tempo restante daquele segundo
	draw_set_alpha(_fracao);
	segundos %= 60;
	draw_text_transformed(room_width / 2 + 270 ,room_height / 2 + 60, round(segundos)  , _fracao * 3, _fracao * 3, 0);
	minutos %= 60;
	draw_text_transformed(room_width / 2 + 180 ,room_height / 2 + 60, floor(minutos), _fracao * 3, _fracao * 3, 0);
	//Fazendo as horas
	horas %= 24;
	draw_text_transformed(room_width / 2 + 90,room_height / 2 + 60, floor(horas), _fracao * 3, _fracao * 3, 0);
	//Contando dias
	horas %= 24;
	draw_text_transformed(room_width / 2,room_height / 2 + 60, floor(dias), _fracao * 3, _fracao * 3, 0);
	draw_set_alpha(1);
	draw_set_halign(-1);
	draw_set_valign(-1);
	
	
}

move_coiso = function()
{
	if(mouse_check_button(mb_left))	
	{
		//Colocando o coiso na osição do mouse
		x = lerp(x,mouse_x, 0.1);//Estou aproximando meu valor x do x do mouse de 10% em 10%
		y = lerp(y,mouse_y, 0.1);//Estou aproximando meu valor y do y do mouse de 10% em 10%
		
	}
}

#endregion