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

// audio_play_sound(Demo_vsVall,true,true);

saved_zoom = global.current_zoom;
saved_camera_x = camera_get_view_x(global.camera);
saved_camera_y = camera_get_view_y(global.camera);

alarm[0] = 1;


// En el evento Create del objeto controlador principal (oController)

// Configurar la resolución del juego
var base_width = 320;
var base_height = 240;
var scale = 3; // Ajusta este valor según la escala deseada

// Configurar el tamaño de la ventana
window_set_size(base_width * scale, base_height * scale);
display_set_gui_size(base_width, base_height);

// Configurar la vista de la cámara
var view_width = base_width;
var view_height = base_height;
camera_set_view_size(global.camera, view_width, view_height);
camera_set_view_pos(global.camera, 0, 0);

// Configurar el tamaño del puerto de la cámara
camera_set_view_size(global.camera, base_width, base_height);
camera_set_view_pos(global.camera, 0, 0);
camera_set_view_target(global.camera, obj_toodl_tid); // Asegúrate de que 'oPlayer' sea el nombre correcto de tu objeto jugador
