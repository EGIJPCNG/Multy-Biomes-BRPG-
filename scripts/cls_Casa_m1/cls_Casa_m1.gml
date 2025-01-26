// cls_Casa.gml

// Constructor de la clase Casa
function Casa() {
    var instance = {};
    instance.suelos = []; // Lista de suelos en la casa
    instance.texturas = []; // Lista de texturas para cada nivel

    // Método para crear un suelo
    instance.crear_suelo = function(_nivel, _ancho, _alto, _textura) {
        var nuevo_suelo = instance_create_layer(x, y, "Instances", obj_floor);
        nuevo_suelo.nivel = _nivel; // Asignar el nivel
        nuevo_suelo.ancho = _ancho; // Asignar el ancho
        nuevo_suelo.alto = _alto; // Asignar el alto
        nuevo_suelo.textura = _textura; // Asignar la textura
        return nuevo_suelo; // Retornar la instancia del suelo
    };

    return instance; // Retornar la instancia de la clase
}

/*
function method (self, on_late_update){	
		function on_late_update(){
		order_in_layer = self.y + offset;
	}

}*/

