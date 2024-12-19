/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

alarm[0] = choose_time1 {
	
	choose_time1 = irandom_range(100,240);
	
	if(state[index] != "hit")
		{
			index = 2;
		}
		
	if !(attackPos){
		image_index = 0;
	}
}