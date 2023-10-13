/// @description Insert description here
// You can write your code in this editor


audio_falloff_set_model(audio_falloff_exponent_distance);

//Criando o meu emmiter
emit =  audio_emitter_create();

//Definindo a posição do emitter
audio_emitter_position(emit, x, y, 0);

//Definindo como ele lida com o som
audio_emitter_falloff(emit, 100, 300, 1.5);

//Tocando o som no emitter
//audio_play_sound_on(emit,snd_capricho, 1,1);

//Tocando o tempo todo
//audio_play_sound(snd_capricho, 1,1);












