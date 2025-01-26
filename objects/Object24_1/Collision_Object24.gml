/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


// Anular solido
if y < other.y && !(y > other.y) {
	// depth = other.depth-1;
	mask_index = -1;
	solid = false;
}/*else if (y < other.y && y > other.y) {

	// mask_index = sprite_index;
	
}else if y > other.y && !(y < other.y){

}*/
// Sismtema de elevación



if(y > other.y) && other.elevac == elevac {
	other.elevac = elevac+1;
	other.depth = depth-1;
}
		
if(y < other.y) && other.elevac == 3{
	elevac = other.elevac+1;
	depth = other.depth-1;
}

if(y < other.y) && other.elevac == 5{
	elevac = other.elevac+1;
	depth = other.depth-1;
}
		



