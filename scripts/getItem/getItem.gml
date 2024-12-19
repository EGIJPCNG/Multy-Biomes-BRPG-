// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información

/* BUSCAR ITEM*/
function getItem(itemId){
	var lenght = ds_list_size(obj_System.inventory);
	
	for(i = 0; i<lenght; i++){
		var item = obj_System.inventory[| i];
		
		if(item[INVENTORY_ITEM] == itemId){
			return item;
		}
	}
	
	return noone;
}