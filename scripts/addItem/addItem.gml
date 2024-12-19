// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información

/* AÑADIR ITEM*/
function addItem(itemId, quantity){
	
	var item = getItem(itemId);
	var itemDef = global.items[itemId]; // ACCESO A LAS PROPIEDADES DEL ITEM
	
	if(item != noone){ // SUMA EL ITEM SI LO ENCUENTRA EN EL INVENTARIO
		
		item[INVENTORY_QUANTITY] = clamp(item[INVENTORY_QUANTITY] + quantity, 1, itemDef[ITEM_DEF_MAX]) // LIMITA LA CANTIDAD DE ITEMS QUE SE PUEDEN SUMAR
		
		// SUMA SIMPLE
		/*
		item[INVENTORY_QUANTITY] += quantity;
		*/
	}else{ // AÑADE EL ITEM SI NO LO ENCUENTRA EN EL INVENTARIO
		item[INVENTORY_ITEM] = itemId;
		item[INVENTORY_QUANTITY] = clamp(quantity, 1, itemDef[ITEM_DEF_MAX]); // LIMITA LA CANTIDAD DE ITEMS QUE SE PUEDEN AÑADIR
		
		// AÑADIDO SIMPLE
		/*
		item[INVENTORY_QUANTITY] = quantity;
		*/
	
		ds_list_add(obj_System.inventory, item);
	}

	
}