// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información

/* USAR ITEM*/
function useItem(itemId){
	var item = getItem(itemId);
	
	if(item != noone) {
		var itemDef = global.items[itemId];
		var action = itemDef[ITEM_DEF_ACTION];

		action();
		
		item[INVENTORY_QUANTITY] -= 1;
		
		if (item[INVENTORY_QUANTITY] <= 0){
			removeItem(itemId);
		}
	}
}