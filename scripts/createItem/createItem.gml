// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function createItem(name,sprite_inv,sprite_use,damage,weight,durability,level,description,action,maxQuantity,type,x_pos,y_pos){
	var item;
	
	item[ITEM_DEF_NAME] = name;
	item[ITEM_DEF_SPRITE_INV] = sprite_inv;
	item[ITEM_DEF_SPRITE_USE] = sprite_use; 
	item[ITEM_DEF_DAMAGE] = damage;
	item[ITEM_DEF_WEIGHT] = weight;
	item[ITEM_DEF_DURABILITY] = durability;
	item[ITEM_DEF_LEVEL] = level;
	item[ITEM_DEF_DESCRIPTION] = description; 
	item[ITEM_DEF_ACTION] = action;
	item[ITEM_DEF_MAX] = maxQuantity;
	item[ITEM_DEF_TYPE] = type;
	item[ITEM_DEF_POSITION] = {x: x_pos, y: y_pos};
	
	return item
}

/*
function createItemConsumible(name,sprite_inv,sprite_use,damage,weight,durability,level,description,action,quantity,maxQuantity,type,position){
	var item;
	
	item[ITEM_DEF_NAME] = name;
	item[ITEM_DEF_SPRITE_INV] = sprite_inv;
	item[ITEM_DEF_SPRITE_USE] = sprite_use; 
	item[ITEM_DEF_DAMAGE] = damage;
	item[ITEM_DEF_WEIGHT] = weight;
	item[ITEM_DEF_DURABILITY] = durability;
	item[ITEM_DEF_LEVEL] = level;
	item[ITEM_DEF_DESCRIPTION] = description; 
	item[ITEM_DEF_ACTION] = action;
	item[ITEM_DEF_QUANTITY] = quantity;
	item[ITEM_DEF_MAX] = maxQuantity;
	item[ITEM_DEF_TYPE] = type;
	item[ITEM_DEF_POSITION] = position;
	
	return item
}*/