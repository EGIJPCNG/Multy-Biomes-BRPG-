/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// En el evento Draw del objeto Suelo

for (var i = 0; i < ancho; i += 96) {
    for (var j = 0; j < alto; j += 96) {
        draw_sprite(textura, 0, x + i, y + j);
    }
}