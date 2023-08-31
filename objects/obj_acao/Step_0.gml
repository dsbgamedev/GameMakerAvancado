/// @description Insert description here
// You can write your code in this editor


//Checando se o mouse clicou e esta por cima
var _mouse_click = mouse_check_button_released(mb_left);
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);

if(_mouse_sobre)
{
	if(_mouse_click)
	{
	  //Excutar o comando da direção
	  //Saber qual a minha direção com b ase no meu texto
	  //Criando a minha direção
	  var _dir;
	  switch(direcao)
	  {
			case "Direita":  _dir = 0; break;
			case "Esquerda": _dir = 180; break;
			case "Cima":     _dir = 90; break;
			case "baixo":    _dir = 270; break;
					
	  }
	  //Executando a acao de salvar a dierecao na pilha do ds_outro
	  with(obj_ds_outro)
	  {
	     adiciona_pilha(_dir, other.direcao);
	  }
	}
}








