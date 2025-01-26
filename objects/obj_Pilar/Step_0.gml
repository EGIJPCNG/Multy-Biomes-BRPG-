/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// depth = -(obj_toodl_tid).y;

#region // Efecto de Sombra

if (!instance_exists(obj_luz) and (sombra != noone)){
	instance_destroy(sombra);
	sombra = noone;
}

if (instance_exists(obj_luz) and (sombra == noone)){
	sombra = instance_create_layer(x,y,"Instances", obj_sombra);
	sombra.sprite_index = sprite_index;
	sombra.image_index = image_index;
	sombra.direction_sombra = point_direction(x,y,obj_luz.x,obj_luz.y) + 90;
}

if(sombra != noone){
	sombra.direccion_sombra = point_direction(x,y,obj_luz.x,obj_luz.y) + 90;
}

#endregion

#region // Solución Parcial profundidades de capas
/*
if (y < room_height/2){
	depth = -y;
}else if(y > room_height/2){
	depth = y;
}*/
#endregion