/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// En el evento Alarm[0] del objeto oController_View

// Restaurar la configuración de la cámara
global.current_zoom = saved_zoom;
camera_set_view_size(global.camera, global.camera_width * global.current_zoom, global.camera_height * global.current_zoom);
camera_set_view_pos(global.camera, saved_camera_x, saved_camera_y);