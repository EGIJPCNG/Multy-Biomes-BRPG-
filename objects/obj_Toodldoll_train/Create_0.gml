/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

image_index = 0;
image_speed = 0;
sprite_index = spr_ToodlDoll_Train;

// Parametros
v_hp_max = 100;
v_hp = v_hp_max;

inte = false;
alpha_std = 0;
regenerar = false;
hit = false;
timehit = 40;
debug_hit = 0;

attack_timer = 0;

alarm[0] = timehit;

spr_idle = spr_ToodlDoll_Train;
spr_hit = spr_ToodlDoll_Train_Diying;

var yy = 0;