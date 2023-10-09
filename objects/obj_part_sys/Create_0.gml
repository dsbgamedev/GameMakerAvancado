/// @description Insert description here
// You can write your code in this editor

//Sistema de particulas consiste em 3 elementos
//1 Sistema de particulas (part system)  - Cuida dae tudo
//2 Emissor de particulas (part emitter) - Cria as particulas
//3 Sistema de particulas (part)		 - É a particula


//Criando o meu sistema de particulas
global.part_sys = part_system_create();

//criando o meu emissor particulas
part_em = part_emitter_create(global.part_sys);

//Criando a minha particula
particle2 = part_type_create();

part_type_shape(particle2, pt_shape_flare);
part_type_size(particle2, 0.01, 0.50, 0.01, 20);
part_type_scale(particle2, 0.10, 0.10);
part_type_colour3(particle2, 4210816, 4227327, 8240895);
part_type_alpha3(particle2, 0.20, 0.80, 0);
part_type_speed(particle2, 5, 10, -0.20, 20);
part_type_direction(particle2, 0, 359, -1, 20);
part_type_gravity(particle2, 0, 270);
part_type_orientation(particle2, 0, 359, 0, 20, 1);
part_type_blend(particle2, 1);
part_type_life(particle2, 1, 20);


//Configurando o part emitter
//Burst cria uma monte de particulas de uma vez, tipo uma explosão
//Stream cria particulas de fomra contínua
//Region, define onde a particula vai ser criada pelo emitter
var _meio_x = room_width / 2;
var _meio_y = room_height / 2;

//Definindo a região
part_emitter_region(blobal.part_em, part_em, _meio_x - 200, 
		_meio_y, _meio_y - 200, _meio_y +200, ps_shape_ellipse,ps_distr_linear );
		
//Criando a particula
part_emitter_stream(global.part_sys, part_em, particle2, 50);








