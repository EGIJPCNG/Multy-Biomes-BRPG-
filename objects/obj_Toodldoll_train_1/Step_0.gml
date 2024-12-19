 /// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Detectar Jugador
depth = -y;


// Puntos de Resistencia
if(v_hp <= 0){
	image_blend = c_gray;
	if (inte){
		audio_play_sound(Destroy_1, 1, false);
	}
	
	inte = false;
}else
{

var _dist_player = distance_to_object(obj_toodl_tid) or distance_to_object(obj_toodl_fred);

if (_dist_player < 48){
	
	inte = true;
	
	if (alpha_std < 1){
		alpha_std += 0.05; 
	}
}else{
	
	if (alpha_std > 0){
		alpha_std -= 0.05;
	}else{
		inte = false;
	}
}

// Validar el hit
if(v_hp < v_hp_max) {
  if(alarm[0] = timehit) && regenerar{
  }
  
  if (regenerar){
	v_hp += 1;
  }
}else{
	regenerar = false;
}

if (hit)
	{
		sprite_index = spr_hit;
	}
}
