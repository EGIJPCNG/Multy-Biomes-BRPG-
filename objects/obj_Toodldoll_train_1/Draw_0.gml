/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Elementos Visuales
draw_sprite(spr_shadow,0,x,y);
draw_self();

// Obtener la posición de la cámara

if (inte){ // Mostrar estadisticas
	// Configuración de la barra de estamina
	var bar_width = 48; // Ancho de la barra
	var bar_height = 8; // Altura de la barra
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