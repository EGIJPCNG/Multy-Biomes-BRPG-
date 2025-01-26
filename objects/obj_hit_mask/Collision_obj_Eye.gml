/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// En el evento de colisión con el enemigo
if(v_damaging) && other.inte
	{
	    other.v_hp -= v_damage; // Resta el daño al enemigo
		// other.regenerar = false;
		other.index = 5;
		// other.debug_hit = v_damage;
		// other.yy = 0;
		v_damaging = false;
		
		
		if (v_damage != 8){
			audio_play_sound(sound[choose(1,2)], 1, false);
			audio_sound_gain(Damage_1,0.5,0.5);
		}else{
			audio_play_sound(sound[choose(0,1,2)], 1, false);
			audio_sound_gain(Damage_1,1,0.5);
		}
		// instance_destroy(); // Destruye el área de daño después de usarla
	}