/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

image_index = 0;
image_speed = 0.4;
sprite_index = spr_Toodl_Fred;

// show_message("Toodl Fred, TIENE UN CUCHILLO");
// show_message("TEN CUIDADO ES PELIGROSO");

sound[0] = Damage_1;
sound[1] = punch_1;
sound[2] = punch_2;

// Parametros
v_hp_max = 100;
v_hp = v_hp_max;

alarm[0] = 60;

// Relativos
v_speed = 2;
v_damage_max = 8; // (cuchillo 5) sin cuchillo 2, con espada  8  
v_damage = v_damage_max;
v_dmgcritical = 16; // 8 (sin espada) con espada 16
v_armor = 0.5;

inte = false;
alpha_std = 0;
debug_hit = 0;
hit = false;
timehit = 40;
yy = 0;
alarm[1] = timehit;

v_estamina_max = 50;
v_estamina = v_estamina_max;

actitud_fisica = 1.5; // 2.5 Expcecional 1.5 Normal && 0.5 Mala
energia = 2.5; // 8 Expcecional && 2.5 Normal
resistencia = 0.5;

// Variables de control
attack_cooldown = 0.5; // Tiempo en segundos entre ataques
attack_timer = 0; // Temporizador para el ataque

damage_area_x = 0;
damage_area_y = 0;

// Sprites
s_dow = spr_Toodl_Fred_down;
s_up = spr_Toodl_Fred_up;
s_right = spr_Toodl_Fred_right;
spr_hit = spr_Toodl_Fred;

// Power Ups
v_allstar = false;
v_enderperl = false;