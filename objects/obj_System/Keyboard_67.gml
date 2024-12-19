/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

	var item = getItem(ITEM_POTION);
	var item1 = getItem(ITEM_ANILLOINVERNAL);
	var item2 = getItem(ITEM_LLAVE);
	var item3 = getItem(ITEM_CUCHILLO);

	if (item != noone){
		show_message("POCIONES: " + string(item[INVENTORY_QUANTITY]));
	}else{ 
		show_message("No tienes pociones" );
	}


	if (item1 != noone){
		show_message("ANILLO: " + string(item1[INVENTORY_QUANTITY]));
	}else{
		show_message("No tienes anillo" );
	}
	
	if (item2 != noone){
		show_message("LLAVE: " + string(item2[INVENTORY_QUANTITY]));
	}else{
		show_message("No tienes llave" );
	}
	
	if (item3 != noone){
		show_message("CUCHILLO: " + string(item3[INVENTORY_QUANTITY]));
	}else{
		show_message("No tienes cuchillo" );
	}