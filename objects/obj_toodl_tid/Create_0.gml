/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

image_index = 0;
image_speed = 0.4;
sprite_index = spr_Toodl_Tid;

sombra = noone;

sound[0] = Damage_1;
sound[1] = punch_1;
sound[2] = punch_2;

// Parametros
v_hp_max = 100;
v_hp = v_hp_max;

alarm[0] = 60;

// Relativos
v_speed = 2;
v_damage_max = 2
v_damage = v_damage_max;
v_dmgcritical = 8;
v_armor = 0.5;

v_estamina_max = 50;
v_estamina = v_estamina_max;

actitud_fisica = 1.5; // 2.5 Expcecional 1.5 Normal && 0.5 Mala
energia = 2.5; // 8 Expcecional && 2.5 Normal
resistencia = 0.5;

// Variables de control
attack_cooldown = 0.5; // Tiempo en segundos entre ataques
attack_timer = 0; // Temporizador para el ataque

inte = false;
alpha_std = 0;
debug_hit = 0;
hit = false;
timehit = 40;
alarm[1] = timehit;
yy = 0;

damage_area_x = 0;
damage_area_y = 0;

// Sprites
s_dow = spr_Toodl_Tid_down;
s_up = spr_Toodl_Tid_up;
s_right = spr_Toodl_Tid_right;
spr_hit = spr_Toodl_Tid;
//direc
s_punch1[0] = spr_ToodlTid_punchright_1;
s_punch1[1] = spr_ToodlTid_punchright_1;
s_punch1[2] = spr_ToodlTid_punchdown_1;

s_punch2[0] = spr_ToodlTid_punchright_2;
s_punch2[1] = spr_ToodlTid_punchright_2;
s_punch2[2] = spr_ToodlTid_punchdown_1;

direc = 0;


soltargolpe = false;

// Power Ups
v_allstar = false;
v_enderperl = false;
inventario = instance_create_layer(x,y,"Instances",obj_System);

/*
with (inventario){
	p_id = other.id;
}*/