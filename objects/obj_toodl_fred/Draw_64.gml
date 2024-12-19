/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


// Obtener la posición de la cámara
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Obtener la posición de la vista
var view_x = view_xview[0];
var view_y = view_yview[0];

// Configuración de la barra de estamina
var bar_width = 50; // Ancho de la barra
var bar_height = 5; // Altura de la barra
var bar_x = view_x + (25 - view_x )- bar_width / 2; // Posición X centrada sobre el jugador
var bar_y = view_y + (25 - view_y )- 20; // Posición Y por encima del jugador

// var bar_x = view_x + (x - view_x)- bar_width / 2; // Posición X centrada sobre el jugador
// var bar_y = view_y + (y - view_y) - 20; // Posición Y por encima del jugador

// Calcular el porcentaje de estamina
var stamina_percentage = v_estamina / v_estamina_max;

draw_set_alpha(1);
// Dibujar el fondo de la barra
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Dibujar la barra de estamina
draw_set_color(c_aqua);
draw_rectangle(bar_x, bar_y, bar_x + (bar_width * stamina_percentage), bar_y + bar_height, false);

draw_text(x,y-sprite_width-16,string(string(v_damage) + "/" + string(v_dmgcritical)))