/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(v_hp <= 0){
	instance_destroy();
}

#region // DECTETAR JUGADOR

var nearest_tid = instance_nearest(x, y, obj_toodl_tid);
var nearest_fred = instance_nearest(x, y, obj_toodl_fred);

if (nearest_tid != noone && nearest_fred != noone) {
    if (distance_to_object(nearest_tid) < distance_to_object(nearest_fred)) {
        objP = nearest_tid;
    } else {
        objP = nearest_fred;
    }
} else if (nearest_tid != noone) {
    objP = nearest_tid;
} else if (nearest_fred != noone) {
    objP = nearest_fred;
} else {
    objP = noone; // Ningún objeto encontrado
}

#endregion

#region // DEBUG

var idle = keyboard_check_pressed(vk_numpad0);
var attack1 = keyboard_check_pressed(vk_numpad1);

if (idle){
	index = 0;
}

if (attack1){
	index = 2;
	if !(attackPos)
		image_index = 0;
}

#endregion

#region // SISTEMA DE ESTADOS

if(state[index] == "idle"){
	
	attackPos = false; 
	sprite_index = spr_idle;
	
	if(image_index <= 7){
		image_speed = 0.6;	
	}else{
		image_index = 0;
		image_speed = 0.6;	
	}
	
	
}

if(state[index] == "attack1"){
		
	// Controlar Animación
	sprite_index = spr_attack1;

    if (image_index < sprite_get_number(spr_attack1)){
		image_speed = 1.2;
		
	} else {
		
		image_speed = 0; // Detener la animación
		attackPos = true;
	}
	
	// Seguir al objetivo
	if (attackPos){
	 
		if(locate){
				xp = objP.x
				yp = objP.y
				locate = false;
				shearch = true;
				
				// Crear Mask
				maskHit = instance_create_layer(x,y,"collision_layer",obj_hit_mask_enemy);
				maskHit.v_damage = v_damage;
				maskHit.v_p = id;
				
			}else if !(shearch){
				locate = true;
			}
			
			
			if(shearch){	
				
				if(xp == x && yp == y){
					
					index = 0;
					shearch = false;
					
				}else{
					// Aplicar la velocidad
					if(maskHit != noone) && instance_exists(maskHit)
						{
							maskHit.x = x;
							maskHit.y = y;
						}
				}
				
				if(!place_free(x,y)){
					scr_clear_hitmask(maskHit);
					shearch = false;
					index = 0;
				}	
				mp_linear_step_object(xp,yp,v_speed,obj_enemy);
			}
	}	
}
	
if(state[index] == "hit"){
	
	if(attackPos){
		image_index = 0;
		attackPos = false; 
	}
	
	timeline_index = tml_index;
	timeline_loop = false;
	
	sprite_index = spr_hit;
	
	scr_clear_hitmask(maskHit);
	
	if(image_index < sprite_get_number(spr_hit)){
		image_speed = 1;
	}else{
		image_speed = 0;
		index = 0;
		
	}
}

#endregion

