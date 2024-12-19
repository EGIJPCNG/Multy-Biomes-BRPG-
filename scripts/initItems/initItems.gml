// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información

function initItems(){
	
	/*
	global.items[ITEM_ANILLOINVERNAL] = createItem("anillo invernal","congela los objetivos",spr_Anilloinvernal, itemHalo, 1);
    global.items[ITEM_LLAVE] = createItem("llave","da acceso a ciertas áreas",spr_Key, itemNoUser, 1);
    global.items[ITEM_POTION] = createItem("poción","restaura salud",spr_Potion, itemPotion, 4);
	*/
	global.items[ITEM_ANILLOINVERNAL] = createItem("anillo invernal",-1,-1,0,0,100,1,"congela los objetivos",itemHalo,1,"posesion",25,25);
    global.items[ITEM_LLAVE] =			createItem("llave",-1,-1,0,0,100,1,"congela los objetivos",itemHalo,1,"posesion",25,25);
	global.items[ITEM_POTION] =			createItem("poción",-1,-1,0,0,100,1,"restaura salud",itemPotion,5,"consumible", 25, 25);
	global.items[ITEM_CUCHILLO] =		createItem("Cuchillo",spr_cuchillo_1,spr_cuchillo_1,6,2,100,1,"una aram blanca",noone,1,"weapon",25,25);
	
	
	
	// show_message(global.items[ITEM_ANILLOINVERNAL]);
}
