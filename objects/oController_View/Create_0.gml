// En el evento Create del objeto oController_View

// Variables de configuración
global.camera_width = 320;
global.camera_height = 240;
global.zoom_speed = 0.1; // Velocidad de zoom
global.min_zoom = 1;   // Zoom mínimo
global.max_zoom = 2.0;   // Zoom máximo

// En el evento Create del objeto oController_View

// Inicializar variables globales
global.zoom_factor = 100; // Ajusta este valor según tus necesidades
//global.min_zoom = 0.5; // Ajusta este valor según tus necesidades
//global.max_zoom = 2.0; // Ajusta este valor según tus necesidades
//global.zoom_speed = 0.1; // Ajusta este valor según tus necesidades
//global.current_zoom = 1.0; // Ajusta este valor según tus necesidades


/*
// Crear la cámara
global.camera = camera_create();
camera_set_view_size(global.camera, global.camera_width, global.camera_height);
*/



// Inicializar el zoom
global.current_zoom = 1.0; // Establecer el zoom inicial a 1.0

// Inicializar la cámara
global.camera = camera_create_view(0, 0, global.camera_width, global.camera_height, 0, -1, -1, 0, 0);
camera_set_view_size(global.camera, global.camera_width * global.current_zoom, global.camera_height * global.current_zoom);

// Establecer la cámara activa
view_camera[0] = global.camera;

//
audio_play_sound(Demo_vsVall,true,true);

saved_zoom = global.current_zoom;
saved_camera_x = camera_get_view_x(global.camera);
saved_camera_y = camera_get_view_y(global.camera);

alarm[0] = 1;