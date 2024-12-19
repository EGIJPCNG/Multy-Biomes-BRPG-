/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var instance_id_to_check = v_p;

if(v_p != other.id) && !(instance_id_to_check.object_index == obj_toodl_tid){
	if(v_damaging) && other.inte
	{
	    other.v_hp -= v_damage; // Resta el daño al enemigo
		other.hit = true;
		other.debug_hit = v_damage;
		other.yy = 0;
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
}