/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region // Declarar Variables
p2 = instance_exists(obj_toodl_fred)

var _key_right = (keyboard_check(vk_right) or (keyboard_check(ord("D")) -p2)) - keyboard_check_released(ord("X"));
var _key_left = (keyboard_check(vk_left)  or (keyboard_check(ord("A")) -p2)) - keyboard_check_released(ord("X"));
var _key_down = (keyboard_check(vk_down)  or (keyboard_check(ord("S")) -p2)) - keyboard_check_released(ord("X"));
var _key_up = (keyboard_check(vk_up)  or (keyboard_check(ord("W")) -p2)) - keyboard_check_released(ord("X"));

var _run =  keyboard_check(vk_shift);
var _downwalk = keyboard_check(ord("Z"));
var _walk = string(_key_right)  + string(_key_left) + string(_key_down) + string(_key_up);

var _attack_f2 = keyboard_check_released(ord("X"));
var _attack_f1 = keyboard_check(ord("X"));

var _control = keyboard_check(vk_control); 

var move_x = 0;
var move_y = 0;
#endregion

#region // Solución Parcial profundidades de capas
depth = -y;

/*
if (y < room_height/2){
	depth = -y;
}else if(y > room_height/2){
	depth = 100;
}*/
#endregion

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
	sombra.sprite_index = sprite_index;
	sombra.image_index = image_index;
	sombra.y = y;
	sombra.x = x;
}

#endregion

/// SISTEMA DE MOVIMIENTO

{ // PRUEBAS
	var pw_1 = keyboard_check_pressed(49);
	var pw_2 = keyboard_check_pressed(50);
	
	if (pw_1) {
		v_allstar = !v_allstar
	}
	
	if (pw_2) {
		v_enderperl = !v_enderperl
	}
	
	
}

{ // CORRER - CAMINAR
	if (_run && !_downwalk) && (v_estamina >= 0) && (_walk != "0000"){
	

		v_estamina -= (0.25 / actitud_fisica) * resistencia;
	
		// Relación estamina/velocidad: velocidad máxima ajustada por actitud física
	    var _v_base = 2.78; // Velocidad mínima
	    var _v_maxima = energia * actitud_fisica; // Velocidad máxima ajustada
	    v_speed = _v_base + (v_estamina / v_estamina_max) * (_v_maxima - _v_base);
	
		// v_speed = 2.78 + (v_estamina / v_estamina_max) * 2; // Velocidad entre 2 y 8

		image_speed = 0.4 * v_speed;
		
	}else if(_downwalk) {
		 v_speed = 1; // Velocidad caminar despacio
		 image_speed = 0.4;
	}else{
		v_speed = 2;
		image_speed = 0.6;
	
		if(v_estamina <= v_estamina_max)
			{
				v_estamina += (0.25 * actitud_fisica);
			}
	}

	// MOVIMIENTO
	
	if(!soltargolpe)
		{
			if(_key_right) && !(_key_left) {
		
				if( place_free(x+v_speed,y))
					move_x += v_speed;
		
				damage_area_x = x+24; // 12
				damage_area_y = y;
				sprite_index = s_right;
				image_xscale = 1;
				direc = 0;
		
			}else if(_key_left)  && !(_key_right) {
		
				if(place_free(x-v_speed,y))
					move_x -= v_speed;
		
				damage_area_x = x-24;
				damage_area_y = y;
				sprite_index = s_right;
				image_xscale = -1;
				direc = 0;
			}

			if(_key_up) && !(_key_down) {
		
				if place_free(x,y-v_speed)
					move_y -= v_speed;
		
				damage_area_x = x;
				damage_area_y = y-24;
				sprite_index = s_up;
				direc = 1;
		
			}else if(_key_down)  && !(_key_up) {
				if place_free(x,y+v_speed)
					move_y += v_speed;
		
				damage_area_x = x;
				damage_area_y = y+24;
				sprite_index = s_dow;
				direc = 2;
			}
	

			if !(_key_up or _key_down or _key_right or _key_left)
			{
				image_speed = 0;
				image_index = 0;
			}else{
	
				if(_key_right && _key_left) && !_key_down && !_key_up{
					image_speed = 0;
					image_index = 0;
				}
	
				if(_key_up && _key_down)  && !_key_left && !_key_right{
					image_speed = 0;
					image_index = 0;
				}
			}
		}

	// Normalizar el vector de movimiento
	var _length = point_distance(0, 0, move_x, move_y);
	if (_length > 0) {		
	    move_x /= _length;
	    move_y /= _length;
	}
			
	// Aplicar la velocidad
	x += move_x * v_speed;
	y += move_y * v_speed;
}
	
{ // SISTEMA DE COMBATE
		
	// Actualizar el temporizador
	attack_timer -= delta_time / 1000000; // delta_time es el tiempo desde el último frame en microsegundos
	
	// Cargar el ataque
	if(_attack_f1) && attack_timer <= 0 {
		// Mostrar sprite de golpe específico sin animación
	    
		/*
		sprite_index = s_punch1[direc]; // Cambia a tu sprite específico
	    image_index = 0; // Asegúrate de que no se reproduzca la animación
		*/
		
		if(v_damage < v_dmgcritical)
			{
				v_damage += 0.125 
			}
			soltargolpe = false;	
	}
	
	// Soltar el ataque
	if(_attack_f2) && attack_timer <= 0 {
		maskHit = instance_create_layer(damage_area_x,damage_area_y,"collision_layer",obj_hit_mask);
		maskHit.v_damage = v_damage;
		maskHit.v_p = id;
			
		// Nivel del golpe
		if (v_damage < v_dmgcritical / 2) {
		        sprite_index = s_punch1[direc]; // Sprite para golpe bajo
		        audio_play_sound(WoosMazo, 1, false);
		    } else {
		        sprite_index = s_punch2[direc]; // Sprite para golpe alto
		        audio_play_sound(fist_fight_1, 1, false);
		    }
		
		v_damage = v_damage_max;
		// Reiniciar el temporizador
		attack_timer = attack_cooldown;
		
		soltargolpe = true;
	}
	
// Manejar la animación del golpe
if (soltargolpe) {
    
    // Reproducir la animación
    if (image_index < image_number - 1) {
        image_index += 0.2; // Incrementar el índice de imagen para la animación

    } else {
		if(direc == 0){
			sprite_index = s_right; // Cambiar al sprite de reposo
		}
        
		if(direc == 2){
			sprite_index = s_dow; // Cambiar al sprite de reposo
		}
        image_index = 0; // Reiniciar el índice de imagen
		soltargolpe = false;
    }
}
	
	if v_allstar {
		
		if (distance_to_object(obj_Toodldoll_train_1)<16)
			{
				// En el evento de colisión con el enemigo
				enemi = instance_nearest(x,y,obj_Toodldoll_train_1);
				enemi.solid = false;
		
				maskHit = instance_create_layer(damage_area_x,damage_area_y,"collision_layer",obj_hit_mask);
				maskHit.v_damage = v_damage;
				maskHit.v_p = id;
			}
	}else{
		if (distance_to_object(obj_Toodldoll_train_1)<16)
			{
				// En el evento de colisión con el enemigo
				enemi = instance_nearest(x,y,obj_Toodldoll_train_1);
				enemi.solid = true;
			}	
	}
	

	if (v_enderperl) && _control {
		if(mouse_check_button_pressed(mb_right)){
			x = mouse_x;
			y = mouse_y;
			
			if(instance_exists(obj_toodl_fred)){
				obj_toodl_fred.x = mouse_x;
				obj_toodl_fred.y = mouse_y;
			}
		}
	}
	
}