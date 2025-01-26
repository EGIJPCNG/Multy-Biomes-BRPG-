 /// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Detectar Jugador
depth = -y;

#region // Efecto de Sombra

if (!instance_exists(obj_luz) and (sombra != noone)){
	instance_destroy(sombra);
	sombra = noone;
}

if (instance_exists(obj_luz) and (sombra == noone)){
	sombra = instance_create_layer(x,y,"Instances", obj_sombra);
	sombra.sprite_index = sprite_index;
	sombra.image_index = image_index;
	sombra.direction_sombra = point_direction(x,y,obj_luz.x,obj_luz.y) + 90;
}

if(sombra != noone){
	sombra.direccion_sombra = point_direction(x,y,obj_luz.x,obj_luz.y) + 90;
}

#endregion

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
