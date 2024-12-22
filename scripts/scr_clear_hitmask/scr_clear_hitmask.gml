// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_clear_hitmask(id_hitmask){
	
	if(id_hitmask != noone) && instance_exists(id_hitmask)
	{
	with (id_hitmask){
			instance_destroy(self,0);
		}
	id_hitmask = noone;
	}
}