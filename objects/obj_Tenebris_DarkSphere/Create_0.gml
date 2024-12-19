/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

v_hp = 100;
v_damage = 10;
v_speed = 4;

spr_idle = spr_Tenebris_DarkSphere_Idle;
spr_walk = spr_Tenebris_DarkSphere_Walk;
spr_attack1 = spr_Tenebris_DarkSphere_Attack1;
spr_hit = spr_Tenebris_DarkSphere_Hit;

index = 0;

state[0] = "idle";
state[1] = "walk";
state[2] = "attack1";
state[3] = "attack2";
state[4] = "attack3";
state[5] = "hit";

av = 0;
attackPos = false;
xp = 0;
yp = 0;
move_x = 0;
move_y = 0;

inte = true;

shearch = false;
locate = false; 

choose_time1 = 100;
alarm[0] = choose_time1;