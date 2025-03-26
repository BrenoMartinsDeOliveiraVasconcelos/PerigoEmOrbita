if (keyboard_check(up_key)){
	current_angle += c_speed
}

if (keyboard_check(down_key)){
	current_angle -= c_speed
}

if (keyboard_check(rotation_up_key)){
	rotation_angle += rotation_speed
}

if (keyboard_check(rotation_down_key)){
	rotation_angle -= rotation_speed
}

if (current_angle < 0){
	current_angle = 360 // Para 360 se menor que zero
}

if (current_angle > 360){
	current_angle = 0
}

if (rotation_angle < 0){
	rotation_angle = 360
}

if (rotation_angle > 360){
	rotation_angle = 0
}


var new_xy = get_xy_angle(global.PLANET.x, global.PLANET.y, global.ORBIT_DISTANCE, current_angle)

x = new_xy[0]
y = new_xy[1]
image_angle = rotation_angle
