// Función para mostrar el objeto actual
// Función para mostrar el objeto actual
function show_current_item(current_index) {
    if (global.player_inventories[p_id] != undefined && array_length(global.player_inventories[p_id]) > 0) {
        if (current_index >= 0 && current_index < array_length(global.player_inventories[p_id])) {
            var current_item = global.player_inventories[p_id][current_index];

            // Aquí puedes mostrar el nombre y las propiedades del objeto
            draw_set_font(fnt_inv);
            
            // Dibuja el sprite del ítem en su posición
            draw_sprite(current_item.sprite, 0, current_item.position.x * 32, current_item.position.y * 32); // Multiplica por el tamaño de celda si es necesario

            // Muestra las propiedades del ítem
            draw_text(0, 32, "Nombre: " + current_item.name);
            draw_text(0, 64, "Tipo: " + current_item.type); // Muestra el tipo de ítem
            draw_text(0, 96, "Daño: " + string(current_item.damage));
            draw_text(0, 128, "Peso: " + string(current_item.weight));
            draw_text(0, 160, "Durabilidad: " + string(current_item.durability));
            draw_text(0, 192, "Nivel: " + string(current_item.level));
            draw_text(0, 224, "Cantidad: " + string(current_item.quantity));
        } else {
            show_message("Error: Índice fuera de rango.");
        }
    } else {
        show_message("Error: Inventario vacío o no inicializado.");
    }
}
draw_set_font(fnt_inv);
draw_text(x,y,p_id);

// Evento de teclado para navegar
// Evento de teclado para navegar
if (keyboard_check_pressed(ord("H"))) {
    current_index = (current_index - 1 + array_length(global.player_inventories[player_id])) % array_length(global.player_inventories[player_id]);
}

if (keyboard_check_pressed(ord("J"))) {
    current_index = (current_index + 1) % array_length(global.player_inventories[player_id]);
}

if (keyboard_check_pressed(ord("E"))) {
    view_inv = !view_inv;
}

if (view_inv) {
    show_current_item(current_index);
}

