/// @description Insert description here
// You can write your code in this editor

//Me desenhando
draw_self();

//exibe_tempo();

//exibe_jogo_tempo();

draw_text(20,20,velh);
draw_text(20,40,velv);

//Desenha uma linha apontando para a direita
//Quero que a minha linha aponte para cima
//Quero que a minha linha aponte para superior e direita (45º graus)
//A minha linha tem 200 pixel
var _x1, _y1, _x2, _y2, _tam, _dir;

//Quero que a linha aponte para o mouse onde esta
//Ele vai ter que ver a direção com base na posicao inicial e
//A posição atual do mouse
//Use a função point_direction

//Quero que a linha tenha no maximo 200 de tamanho
//E se mouse se aproximar dela ela deve ficar menor
//Com base na distancia entre a posição inicial dela e o mouse
//Point distance para apontar uma distancia
//Ele vai ter o menor valor entre 200 e a distancia dele para o mouse
//Façam a linha girar que nem um ponteiro de relogio
dir++;

_x1  = 300;//Inicio X da linha 
_y1  = 300;//Inicio Y da linha
_tam = min(200,point_distance(_x1,_y1, mouse_x, mouse_y));//tamanho da linha
_dir = point_direction(_x1,_y1, mouse_x, mouse_y);
//O X2 e a posição inicial + o tamanho da linha com base na direção
//Se a linha esta para a direita (direção 0)
//Então o _x2 vai ser x1 + 200
//Se a linha ta para cima (direção 90)
//Então o X2 vai ser o _x1 + 0
_x2  = _x1 + lengthdir_x(_tam, _dir);//Inicio da linha mais o tamanho da linha
_y2  = _y1 + lengthdir_y(_tam, _dir);//Mesa posicao porque a linha so vai para a direira

draw_line(_x1, _y1, _x2, _y2);


/*
//Calculando a distancia do X
//pi / 180 é a conversão para o circulo
var _conv = pi / 180;
var _distx = cos(_conv * 2 * -2) * 100;
var _disty = sin(_conv * 2 * -2) * 100;



//Desenhando um sprite para girar ao redor do coiso
draw_sprite(spr_moeda, 0 ,x + _distx, y + _disty);
//show_message(x + _distx);



