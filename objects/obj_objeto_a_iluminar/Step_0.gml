// En el evento Step del objeto del jugador
if (keyboard_check_pressed(ord("E"))) {
    with (instance_nearest(x, y, obj_antorcha)) {
        encendida = !encendida; // Invierte el estado de encendida
    }
}