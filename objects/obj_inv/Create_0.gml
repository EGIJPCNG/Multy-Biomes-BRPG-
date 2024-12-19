/*
// Crear un array para almacenar los inventarios de los jugadores
global.player_inventories = [];

p_id = 0;

// Función para inicializar el inventario de un jugador
function initialize_player_inventory(p_id) {
    global.player_inventories[p_id] = []; // Inicializa el inventario para este jugador
}


// Función para agregar un ítem al inventario de un jugador
function add_item_to_player_inventory(p_id, name, sprite, use_sprite, damage, weight, durability, level, quantity, type, x_pos, y_pos) {
    var new_item = {
        name: name,
        sprite: sprite,
        use_sprite: use_sprite,
        damage: damage,
        weight: weight,
        durability: durability,
        level: level,
        quantity: quantity,
		type: type,
		position: {x: x_pos, y: y_pos}
		
    };
    
    array_push(global.player_inventories[p_id], new_item);
}

// Variables para la navegación
current_index = 0;
view_inv = false;*/

//add_item_to_player_inventory(p_id, "Espada de Fuego", spr_cuchillo_1, spr_cuchillo_1, 15, 6, 80, 2, 1, "arma", 0, 0);

/*
// Agregar una nueva espada al inventario del jugador 0 en la posición (0, 0)
add_item_to_player_inventory(0, "Espada de Fuego", spr_espada_fuego, spr_espada_fuego_uso, 15, 6, 80, 2, 1, "arma", 0, 0);

// Agregar una nueva poción al inventario del jugador 0 en la posición (1, 0)
add_item_to_player_inventory(0, "Poción de Salud", spr_pocion_salud, spr_pocion_salud_uso, 0, 1, 50, 1, 5, "consumible", 1, 0);
*/


{/*
// Definición del inventario
inventory = []

// Ejemplo de un objeto en el inventario
var cuchillo = {
	name: "Cuchillo",
	sprite: spr_cuchillo_1, // Sprite del objeto en el inventario
    use_sprite: spr_cuchillo_1, // Sprite para el uso del jugador
    damage: 10,
    weight: 5, // peso
    durability: 100,
    level: 1,
    quantity: 1,
    type: "weapon", // Tipo de ítem
    position: {x: 25/, y: 25} // Posición del ítem en el inventario
}

// Agregar el objeto al inventario
array_push(inventory, cuchillo)

// Variables para la navegación
current_index = 0;
viewInv = false;
*/}