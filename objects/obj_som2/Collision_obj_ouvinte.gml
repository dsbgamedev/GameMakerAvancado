/// @description Insert description here
// You can write your code in this editor

//Quando colidir com player toca som
var _som = audio_play_sound(snd_sino, 1 , 0);
//Mudando o pitch dele
var _variacao = random_range(.9, 1);
audio_sound_pitch(_som, _variacao);

instance_destroy();







