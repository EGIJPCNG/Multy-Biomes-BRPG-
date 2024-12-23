// En el evento Step de obj_antorcha
if (encendida) {
    // Si la antorcha está encendida, animar la llama y calcular la iluminación
    image_index = 1; // Ajusta la velocidad de la animación
    // ... código para calcular la iluminación ...
	if (v_llama_exist == -1)
		{
			v_llama_exist = instance_create_depth(x,y-8,-100,obj_antorcha_llama);
		}
		
} else {
    // Si la antorcha está apagada, detener la animación
    image_index = 0;
	
	// Aqui se crea el humo
	
	if(v_llama_exist != -1)
		{
			with(v_llama_exist){
				instance_destroy();
			}
		}
		
	v_llama_exist = -1;
	
}

// Calcular la iluminación
var radio_iluminacion = 100; // Ajusta el radio según tus necesidades
for (var i = 0; i < instance_number(obj_objeto_a_iluminar); i++) {
    var objeto = instance_find(obj_objeto_a_iluminar, i);
    var distancia = point_distance(x, y, objeto.x, objeto.y);
    if (distancia < radio_iluminacion) {
        var intensidad = clamp((radio_iluminacion - distancia) / radio_iluminacion, 0, 1);
        objeto.iluminacion = intensidad;
    }
}