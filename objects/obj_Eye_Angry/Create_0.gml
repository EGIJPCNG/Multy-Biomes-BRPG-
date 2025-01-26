/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Atributos
v_hp = 20;
v_damage = 2;
v_speed = 16;
v_desgracia = random_range(0,10);

invincible=false;
chase=false;
runaway=false;
justrun=false;

inte = true;

// Imagenes
spr_idle = spr_eye0_angry_idle;
spr_walk = spr_eye0_angry_idle;
spr_attack1 = spr_eye0_angry_idle;
spr_attack2 = spr_eye0_angry_idle;
spr_hit = spr_eye0_angry_idle;

// Variables de cooldown
// chase_cooldown = 0;

v_path_exists = false;
path_started = true;

// Estados
sentido = 0;
attackPos = false;

index = 1;

state[0] = "idle";
state[1] = "walk";
state[2] = "attack1";
state[3] = "attack2";
state[4] = "explorer";
state[5] = "hit";