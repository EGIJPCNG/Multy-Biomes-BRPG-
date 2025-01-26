/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Dibujar Sombra
// draw_sprite(spr_shadow,0,x,y+1);

// Dibujar Sprite
draw_self();

#region // Elementos Visuales (BarLife, BarStamine)
if (inte){ // Mostrar estadisticas
	// Configuración de la barra de estamina
	var bar_width = 48; // Ancho de la barra
	var bar_height = 8 // Altura de la barra
	var bar_x = (x) - bar_width / 2; // Posición X centrada sobre el jugador
	var bar_y = (y) - 40; // Posición Y por encima del jugador

	// Calcular el porcentaje de estamina
	var hp_percentage = v_hp / v_hp_max;

	// Dibujar el fondo de la barra
	draw_set_alpha(alpha_std);
	draw_set_color(c_black);
	draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

	// Dibujar la barra de estamina
	draw_set_color(c_red);
	draw_rectangle(bar_x, bar_y, bar_x + (bar_width * hp_percentage), bar_y + bar_height, false);
	
	// Mostrar el daño infrigido
	
	if(sprite_index == spr_hit){
		draw_set_font(fnt_hit);
		yy += 1; 
		draw_text(x-4,y-18-yy,int64(debug_hit));
	}else{
		yy = 0;
		
	}
	}
#endregion

#region // Pruebas
/*
// En el evento Draw del jugador
if (v_allstar) {
    // Activar el shader
    shader_set(sh_starpower); // Reemplaza 'your_shader' con el nombre de tu shader
    shader_set_uniform_f(5, current_time); // 'current_time' debe ser una variable que incrementa con el tiempo
} else {
    // Desactivar el shader
    shader_reset();
}


// Restablecer el shader si no está en modo 'allstar'
if (!v_allstar) {
    shader_reset();
}*/
#endregion

