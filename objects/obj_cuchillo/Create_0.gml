/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var cuchillo = {
	name: "Cuchillo",
	sprite: spr_cuchillo_1, // Sprite del objeto en el inventario
    use_sprite: spr_cuchillo_1, // Sprite para el uso del jugador
    damage: 6,
    weight: 2, // peso
    durability: 100,
    level: 1,
	description: "una arma blanca",
	action: noone,
    quantity: 1,
	quantity_max: 1,
	type: "weapon", // Tipo de ítem
    position: {x: 25, y: 25} // Posición del ítem en el inventario
}