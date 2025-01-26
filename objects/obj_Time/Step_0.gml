/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// visible
if n == 0 {
	image_alpha += time;
	if image_alpha >= 0.8 {
		n = 1;
		time = 0;
	}
}

// invisible

if (n==1){
	image_alpha -= time;
	if image_alpha <= 0 {
		n = 0;
		time = 0;
	}
}

if time = 0 {
	if alarm[0] = -1{
		alarm[0] = 4*60
	}
}