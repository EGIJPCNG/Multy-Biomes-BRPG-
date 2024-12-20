// En el evento Step del objeto oController_View

// Manejar el zoom con la rueda del ratón solo si se presiona Control
if (keyboard_check(vk_control)) {
    if (mouse_wheel_up()) {
        // Aumentar el zoom
        var new_zoom = global.current_zoom - global.zoom_speed;
        if (new_zoom >= global.min_zoom) {
            global.current_zoom = new_zoom;
            camera_set_view_size(global.camera, global.camera_width * global.current_zoom, global.camera_height * global.current_zoom);
        }
    } else if (mouse_wheel_down()) {
        // Disminuir el zoom
        var new_zoom = global.current_zoom + global.zoom_speed;
        if (new_zoom <= global.max_zoom) {
            global.current_zoom = new_zoom;
            camera_set_view_size(global.camera, global.camera_width * global.current_zoom, global.camera_height * global.current_zoom);
        }
    }
}

// Variables para las posiciones de los jugadores
var player1_x, player1_y, player2_x, player2_y;

// Verificar si los jugadores existen y obtener sus posiciones
if (instance_exists(obj_toodl_tid)) {
    player1_x = obj_toodl_tid.x;
    player1_y = obj_toodl_tid.y;
} else if (instance_exists(obj_toodl_fred)) {
    player1_x = obj_toodl_fred.x;
    player1_y = obj_toodl_fred.y;
} else {
    player1_x = 0;
    player1_y = 0;
}

if (instance_exists(obj_toodl_fred)) {
    player2_x = obj_toodl_fred.x;
    player2_y = obj_toodl_fred.y;
} else {
    player2_x = player1_x;
    player2_y = player1_y;
}

// Calcular el centro entre los dos jugadores
var center_x = (player1_x + player2_x) / 2;
var center_y = (player1_y + player2_y) / 2;

// Calcular la distancia entre los dos jugadores
var distance = point_distance(player1_x, player1_y, player2_x, player2_y);

// Ajustar el zoom basado en la distancia entre los jugadores
var target_zoom = clamp(distance / global.zoom_factor, global.min_zoom, global.max_zoom);
global.current_zoom = lerp(global.current_zoom, target_zoom, 0.1);
camera_set_view_size(global.camera, global.camera_width * global.current_zoom, global.camera_height * global.current_zoom);

// Centrar la cámara en el punto medio entre los jugadores
camera_set_view_pos(global.camera, center_x - global.camera_width * global.current_zoom / 2, center_y - global.camera_height * global.current_zoom / 2);

/// Pantalla Completa
// En el evento de Tecla Presionada del objeto
if (keyboard_check_pressed(vk_f4)) {
    // Cambiar a pantalla completa
    window_set_fullscreen(!window_get_fullscreen());

    // Restablecer la resolución original
    display_set_gui_size(room_width, room_height);
}


// En el evento Step del objeto oController_View

// Manejar el reinicio del nivel
if (keyboard_check_pressed(ord("R"))) {
    // Guardar la configuración de la cámara
    saved_zoom = global.current_zoom;
    saved_camera_x = camera_get_view_x(global.camera);
    saved_camera_y = camera_get_view_y(global.camera);

    // Restaurar la configuración de la cámara después de un pequeño retraso
    alarm[0] = 1; // Ajusta el valor del retraso según sea necesario
	
	// Reiniciar el nivel
    game_restart();
}

