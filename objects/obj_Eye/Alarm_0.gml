/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

alarm[0] = choose_time1 {
	
	choose_time1 = irandom_range(100,240) - v_desgracia*1.5;
	
	if(state[index] != "hit") && (state[index] != "attack1") && (state[index] != "attack2")
		{
			if(v_desgracia >= 5) && (v_desgracia <= 8 ){
				index = choose(1,1);
				sentido = choose(1,1);
			}else if(v_desgracia >= 8) && (v_desgracia <= 10){
				index = choose(1,1);
				sentido = choose(1,1);
			}else{
				index = choose(1,1);
				sentido = choose(1,1);
			}
			
		}
		
	if !(attackPos){
		image_index = 0;
	}
}