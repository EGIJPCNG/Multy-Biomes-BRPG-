// Dibujar el objeto con un color más claro si está iluminado
draw_set_color(c_white * iluminacion);
draw_sprite(sprite_index, image_index, x, y);
draw_set_color(c_white);