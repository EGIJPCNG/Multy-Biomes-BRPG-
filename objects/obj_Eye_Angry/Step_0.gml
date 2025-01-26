/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Lógica de Movimiento de IA
image_angle = direction;

if(state[index] == "walk") {
		    
			// Crear una nueva ruta aleatoria
	        if (!v_path_exists) {
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
}
	
if(state[index] == "attack1"){
	
	// Solo Correr
	if justrun=true {
	    move_towards_point(obj_toodl_tid.x,obj_toodl_tid.y,5);
	} else {
		// Disparador de Proximidad Inicial para Persecución
		if runaway=false && chase=false  && distance_to_object(obj_toodl_tid) < 200 {
		    chase=true;
		    runaway=false;
		}
	}
	
	// Nuevo Disparador de Proximidad para Persecución (Solo uno por vida de la instancia)
	if chase=true && runaway=false && distance_to_object(obj_toodl_tid) < 400 {
	    if (!place_meeting(x, y, obj_Solid)) {
	        move_towards_point(obj_toodl_tid.x,obj_toodl_tid.y,5);
	    } else {
	    }
	}
	/*
	if (chase=true && runaway=false && distance_to_object(obj_toodl_tid) > 420){
		// Cambiar al estado Walk
		index = 1;
	}else {*/
		// Si el jugador está fuera del rango, detener la persecución
		if chase=true && runaway=false && distance_to_object(obj_toodl_tid) > 400 {
		    move_towards_point(obj_toodl_tid.x,obj_toodl_tid.y,0);
		    chase = false;
		}
	/*}*/

	// Huir en dirección aleatoria lejos del jugador después del evento de colisión con el jugador
	if chase=false && runaway=true {
	    playerdirection = point_direction(x,y,obj_toodl_tid.x,obj_toodl_tid.y);
	    direction = (playerdirection + (180 + random(40)) );
	    move_towards_point(x + lengthdir_x(100, direction), y + lengthdir_y(100, direction), 5);
	  } 
	}
	


// Detener y Comenzar Animación
if speed = 0 {
    image_speed = 0;
} else {
    image_speed = 2;
}
