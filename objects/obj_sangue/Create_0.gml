/// @description Insert description here
// You can write your code in this editor

//Quem vai criar este rapaz é o objeto surf quando o player clicar na tela
//Quando ele for criado elevai escolher uma direção aleatoria
//Ele vai ir naquela direção
//Ele vai diminuir de tamanho
//Ele vai ficar mais transparente
//Quando ele ficar muito pequeno, ele se destroi


//Iniciar na cor vermelha
image_blend = c_red;
//Iniciar com um tamanho aleatorio
image_xscale = random_range(0.1,.5);
image_yscale = image_xscale;

//Definindo os valores em que eu vou me transformar
dir = random(359);
vel = random_range(5,20);
dim = random_range(image_xscale / 10, image_xscale / 5);

//Faz coisa
faz_coisa = function()
{
	//Diminuindo
	image_xscale -= dim;
	image_xscale = image_xscale;
	
	//Movendo
	x += lengthdir_x(vel, dir);
	y += lengthdir_y(vel, dir);
	
	//Mudando a transparencia de forma aleatória
	image_alpha -= random_range(.03, .1);
	
	//Me destruindo se eu fiquei muito pequeno
	if(image_xscale < 0) instance_destroy();
	
}









