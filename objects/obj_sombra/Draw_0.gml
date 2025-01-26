/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(y > obj_luz.y){
	draw_sprite_ext(sprite_index, image_index, x, y/*+sprite_width/2+24*/, -1, 1.2, direccion_sombra, c_black, v_alpha_shadow-(obj_Time.image_alpha));
}else{
	draw_sprite_ext(sprite_index, image_index, x, y/*+sprite_width/2-24*/, 1, 1.2, direccion_sombra, c_black, v_alpha_shadow-(obj_Time.image_alpha));
}