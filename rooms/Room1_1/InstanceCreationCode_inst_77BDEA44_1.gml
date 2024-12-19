// Variables de control
attack_cooldown = 0.5; // Tiempo en segundos entre ataques
attack_timer = 0; // Temporizador para el ataque
v_damage_max = 5;
v_damage = v_damage_max;
v_dmgcritical = 9;

sound[0] = Damage_1;
sound[1] = punch_1;
sound[2] = punch_2;

vEn = 1;

// Suponiendo que este código está dentro de un evento o función que se llama repetidamente