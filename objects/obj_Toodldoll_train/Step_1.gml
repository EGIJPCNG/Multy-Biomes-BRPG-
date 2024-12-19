/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (v_hp > 0) {
    // Actualizar el temporizador
    attack_timer -= delta_time / 1000000; // delta_time es el tiempo desde el último frame en microsegundos


	if(v_damage < v_dmgcritical)
			{
				v_damage += 0.125 
			}else{
				v_damage = v_damage_max;
			}
			
    if (attack_timer <= 0) &&  (v_damage >= v_dmgcritical){
		
		
		
        regenerar = false;
        hit = true;
        debug_hit = v_damage;
		v_hp -= v_damage;
        yy = 0;
        v_damaging = false;
		
		
        if (v_damage != 8) {
            audio_play_sound(sound[choose(1, 2)], 1, false);
            audio_sound_gain(Damage_1, 0.5, 0.5);
        } else {
            audio_play_sound(sound[choose(0, 1, 2)], 1, false);
            audio_sound_gain(Damage_1, 1, 0.5);
        }
		
        attack_timer = attack_cooldown;
    }

    // Aquí puedes agregar un pequeño retraso o esperar un evento para evitar un bucle infinito
    // Por ejemplo, puedes usar un sleep o un yield si es necesario
}