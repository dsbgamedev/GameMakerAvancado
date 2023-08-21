/// @description Insert description here
// You can write your code in this editor

var _rigth, _left, _up, _down;
//Quero que ele se mova usando as letras e as setas
//Devo fazer isso usando uma das funções max ou min
//Se eu estou apertando o D ele vai ter o valor 1, e a seta valor zero
_rigth = max(keyboard_check(ord("D")), keyboard_check(vk_right));
_left  = max(keyboard_check(ord("A")), keyboard_check(vk_left));
_up  = keyboard_check(ord("W")) or keyboard_check(vk_up)//Jeito que o professor faz.
_down  = keyboard_check(vk_down) or keyboard_check(ord("S"));

//Movendo
//Quando eu for pra esquerda a direita fica com valor 0
//Exemplo (1 - 0) * 5 = 5 indo pra direita || (0 - 1) * 5 = -5; indo pra esquerda
x += (_rigth - _left) * 5;

y += (_down - _up) * 5;

//Diminuindo o tempo de pouco em pocuo
//Fazer diminuir a cada segundo
//So diminui o tempo, enquanto ele for maior do que zero

if(keyboard_check_pressed(vk_enter))
{
	tempo = get_timer() / 1000000; //|delta_time / 1000000 - Dividi por 1 milhao porque o retorno é em microsegundos |
}


//Contando os segundos do jogo
segundos =  get_timer() / 100;	
//Definindo os meus minutos
minutos = (get_timer() / 100) / 60;
//Contando as hotas
horas = (get_timer() / 100) / 60 / 60;
//Contando os dias
dias = (get_timer() /100) / 60 / 60 / 24;

