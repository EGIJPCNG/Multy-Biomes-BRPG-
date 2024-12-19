// En el evento Create del objeto oController_View

// Variables de configuración
global.camera_width = 320;
global.camera_height = 240;
global.zoom_speed = 0.1; // Velocidad de zoom
global.min_zoom = 0.5;   // Zoom mínimo
global.max_zoom = 2.0;   // Zoom máximo

// Crear la cámara
global.camera = camera_create();
camera_set_view_size(global.camera, global.camera_width, global.camera_height);

// Establecer la cámara activa
view_camera[0] = global.camera;

// Inicializar el zoom
global.current_zoom = 1.0; // Establecer el zoom inicial a 1.0

//
audio_play_sound(Demo_vsVall,true,true);