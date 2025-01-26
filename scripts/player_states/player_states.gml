// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function player_state_idle(){
	velh = 0;
	velv = 0;
	
	if(keyboard_check_pressed(ord("K"))){
		state = player_state_free;
	}
}

function player_state_free(){
	var _key_up = keyboard_check(ord("U"));
	var _key_down = keyboard_check(ord("J"));
	var _key_left = keyboard_check(ord("H"));
	var _key_right = keyboard_check(ord("K"));

	var _key_move = _key_left - _key_right != 0 || _key_down - _key_up != 0;

	dir = point_direction(0,0, _key_right - _key_left , _key_down - _key_up);

	velh = lengthdir_x(velc * _key_move, dir);
	velv = lengthdir_y(velc * _key_move, dir);

	x+=velh;
	y+=velv;
}