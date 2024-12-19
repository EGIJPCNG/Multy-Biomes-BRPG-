// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información

/* ELIMINAR ITEM*/
function removeItem(itemId){
	var item = getItem(itemId);
	
	if (item != noone){
		var pos = ds_list_find_index(obj_System.inventory, item)
		ds_list_delete(obj_System.inventory, pos)
	}
}