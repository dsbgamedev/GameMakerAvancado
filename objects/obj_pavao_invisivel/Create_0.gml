/// @description Insert description here
// You can write your code in this editor

/*Sempre que eu apertar o espaço
No create o pavão vai definir o x e y dele de forma aleatória
O pavão vai fazer um barulho de pavão
SE eu estiver a uma distância menor do que 20 pixels do pavão
ele mostra uma mensagem falando que eu peguei o pavão
caso contrario ele diz que o pavão esta longe*/

//Garantindo que ele sempre ira mudar 
randomize();

//Definindo a minha posição
x = random(room_width);
y = random_range(0,room_height);

//Criando emitter
emit = audio_emitter_create();

//Definindo a posição do emitter
audio_emitter_position(emit, x, y, 0);

audio_emitter_falloff(emit, 200, 400, 0);














