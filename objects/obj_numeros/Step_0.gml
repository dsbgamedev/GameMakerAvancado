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

//Movendo usando velh e velv
//Quando eu for pra esquerda a direita fica com valor 0
//Exemplo (1 - 0) * 5 = 5 indo pra direita || (0 - 1) * 5 = -5; indo pra esquerda
//velh += (_rigth - _left) * acel;

//Acelerando meu velh usando lerp
velh = lerp(velh, (_rigth - _left) * max_velh, acel);

velv += (_down - _up) * acel;

//Impedindo que o velv paesse dos limites //2º forma de usar o clump
velv = clamp(velv,-max_velv,max_velv);//impedi que velv tenha outro valor maior ou menos ele fica dentro do limite estabelecido
//Alterando o eixo x e o eixo y com base nas velocidades
//Garantindo que o movimento fique dentro do limite do max_velh
//Se o velh for maior do que -max_velh ou max_velh, ele vai ficar dentro desse limite
x += clamp(velh,-max_velh,max_velh);//1º forma de usar o clump
y += velv;

//Quando eu estiver me movendo na horizontal ele vai aproximar a saturação de 255
//Quando eu nao estiver me movendo na horizontal ele vai aproximar a saturação de 0
//Usando o lerp e checando se ele esta se movendo na horizontal
//aplicando a cor
image_blend = make_color_hsv(0,satura,255);
//Checando se eu estou apertando uma das direções
if(_rigth + _left != 0)
{
	satura = lerp(satura, 255,0.1);	
}
else//Nao estou me movendo para horizontal
{
	satura = lerp(satura,0,0.01);
}

//Quando eu nao estiver apertando nem rigth e nem left o velh vai se aproximar do 0
//Use lerp para fazer isso
//Checando se eu não estou apertando rigth e nem left
if(!_rigth && !_left)
{
	velh = lerp(velh, 0,0.1);
}

move_coiso();

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

if(mouse_x != x)//Nao correr risco do bug de sumir o objeto
{
	//image_xscale = sign(mouse_x - x);
}

//Checando a distancia do mouse do eixo X para o coiso
//show_debug_message(abs(mouse_x - x));//abs converte os numeros em sempre positivos

//Se o X estiver dentro do intervalo entao ele nao altera o X
//Se o X sair do intervalo, então ele coloca o X dentro do intervalo
x = clamp(x,0 + sprite_width / 2, room_width - sprite_width / 2) ;
show_debug_message(room_width);
//Façam ele ficar dentro da room no eixo Y
y = clamp(y,sprite_height, room_height);