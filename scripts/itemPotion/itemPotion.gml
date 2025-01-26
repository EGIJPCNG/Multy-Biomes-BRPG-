// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function itemPotion(){
	
	obj_toodl_tid.v_hp_max += 10;
	obj_toodl_tid.v_hp += 10;
	// show_message("Te has regenerado 10 puntos de resistencia")
	
	alarm_set(0,60)
	alarm_set(1,90)
	
	if ev_alarm[0] 
		{
			audio_play_sound(Plop,0,0);
		}
	
	if ev_alarm[1]
		{
			audio_play_sound(Bubble_1,0,0);
		}
}