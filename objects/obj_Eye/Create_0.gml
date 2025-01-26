/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Atributos
v_hp = 20;
v_damage = 2;
v_speed = 16;
v_desgracia = random_range(0,10);

// Imagenes
spr_idle = spr_eye0_idle;
spr_walk = spr_eye0_idle;
spr_attack1 = spr_eye0_idle;
spr_attack2 = spr_eye0_idle;
spr_hit = spr_eye0_idle;

// Estados
sentido = 0;
attackPos = false;

index = 0;

state[0] = "idle";
state[1] = "walk";
state[2] = "attack1";
state[3] = "attack2";
state[4] = "explorer";
state[5] = "hit";


// Metodos de interacción
maskHit = noone;
inte = true;

// Posición del jugador
xp = 0;
yp = 0;

move_x = 0;
move_y = 0;

// Posición del sujeto

sx = 0;
sy = -16;

v_path_exists = false;
path_started = true;

// Temporizador de estados
choose_time1 = 100 - v_desgracia;
alarm[0] = choose_time1;
