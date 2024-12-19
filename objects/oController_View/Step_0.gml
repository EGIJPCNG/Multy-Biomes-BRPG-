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


// Seguir al jugador
var player_x = obj_toodl_tid.x; // Asegúrate de que 'obj_player' sea el nombre correcto de tu objeto jugador
var player_y = obj_toodl_tid.y;

// Centrar la cámara en el jugador
camera_set_view_pos(global.camera, player_x - global.camera_width * global.current_zoom / 2, player_y - global.camera_height * global.current_zoom / 2);

/// Pantalla Completa
// En el evento de Tecla Presionada del objeto
if (keyboard_check_pressed(vk_f4)) {
    // Cambiar a pantalla completa
    window_set_fullscreen(!window_get_fullscreen());

    // Restablecer la resolución original
    display_set_gui_size(room_width, room_height);
}

if (keyboard_check_pressed(ord("R"))){
	room_restart();
}