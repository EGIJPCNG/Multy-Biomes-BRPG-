/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

image_angle = direction;
depth = -y;

#region // VALIDAR PUNTOS DE RESISTENCIA
if(v_hp <= 0){
	instance_destroy();
}
#endregion

#region // DECTETAR JUGADOR

var nearest_tid = instance_nearest(x, y, obj_toodl_tid);
var nearest_fred = instance_nearest(x, y, obj_toodl_fred);

ditanciaP = distance_to_object(nearest_tid)

if (ditanciaP <= 128)
	{

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
}

#endregion


#region // DEBUG (OPCIONAL)
/*
var idle = keyboard_check_pressed(vk_numpad0);
var attack1 = keyboard_check_pressed(vk_numpad1);
*/
/*
if (idle){
	index = 0;
}

if (attack1){
	index = 2;
	if !(attackPos)
		image_index = 0;
}
*/
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
	
if(state[index] == "walk"){
	
	sprite_index = spr_walk;
	image_speed = 1;

	if (!v_path_exists) {
		// Crear una nueva ruta
		path = path_add();
		v_path_exists = true;
		path_started = false;
	}

	if (v_path_exists && !path_started) {
		// Definir puntos de la ruta para recorrer todo el nivel
		var level_width = room_width;
		var level_height = room_height;
		
		path_add_point(path, x, y, v_speed);
		path_add_point(path, irandom_range(0, level_width), irandom_range(0, level_height), v_speed);
		path_add_point(path, x+irandom_range(-320, 320), y+irandom_range(-320, 320), v_speed);
		path_add_point(path, irandom_range(0, level_width), irandom_range(0, level_height), v_speed);
		path_start(path, v_speed, path_action_stop, false);
		path_started = true;
	}

	if (path_started) {
		// Seguir la ruta
		if (path_position == 1) {
			path_delete(path);
			v_path_exists = false;
			path_started = false;
			index = 1;
		}
	}

	if(!place_free(x + hspeed, y + vspeed)){
		// Eliminar el punto actual y crear un nuevo camino
		path_delete(path);
		v_path_exists = false;
		path_started = false;
	}

	// Crear un nuevo camino si no existe
	if (!v_path_exists) {
		path = path_add();
		v_path_exists = true;
		path_started = false;
	}
	
	// Movimiento curvo
	var angle = point_direction(x, y, path_get_point_x(path, path_position), path_get_point_y(path, path_position));
	hspeed = lengthdir_x(v_speed, angle);
	vspeed = lengthdir_y(v_speed, angle);

	// Disminuir la velocidad al acercarse al siguiente punto
	/*
	var distance_to_next_point = point_distance(x, y, path_get_point_x(path, path_position), path_get_point_y(path, path_position));
	if (distance_to_next_point < 160) {
		v_speed = max(4, v_speed - 1);
		image_blend = c_aqua;
	} else {
		v_speed = min(4, v_speed + 5);
		image_blend = c_red;
	}*/
}

if(state[index] == "attack1"){
		
	// Controlar Animación
	sprite_index = spr_attack1;
	
	
		
}
	
if(state[index] == "hit"){
	
	if(attackPos){
		image_index = 0;
		attackPos = false; 
	}
	
	timeline_index = tml_index;
	timeline_loop = false;
	
	sprite_index = spr_hit;
	
	if(maskHit != noone && instance_exists(maskHit))
		{
			scr_clear_hitmask(maskHit);
		}
	
	if(image_index < sprite_get_number(spr_hit)){
		image_speed = 1;
	}else{
		image_speed = 0;
		index = 0;
	}
}

/*
if(state[index] == "attack2"){
	
	sprite_index = spr_attack2;
	image_speed = 1.4;
	
	if(image_index == 14){
		
		repeat(12){
			ball = instance_create_layer(x,y,"Instances",obj_ballshot_tenebris);
			ball.direction = random_range(0,360);
			ball.speed = 6;
		}
		
	}else if(image_index >= sprite_get_number(spr_attack2)-1){
		index = choose(0,2)
	}
}*/
	

#endregion