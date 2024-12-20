/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

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

if (hit)
	{
		sprite_index = spr_hit;
	}
	
// Puntos de Resistencia
if(v_hp <= 0){
	image_blend = c_gray;
	if (inte){
		audio_play_sound(Destroy_1, 1, false);
	}
	
	if(!instance_exists(obj_toodl_fred)){
		room_restart();
	}else{
		instance_destroy();
	}
}
