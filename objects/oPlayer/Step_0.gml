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

if (blast_rate_timer == 0){
	if (keyboard_check(shoot_key)){
		blast_rate_timer++
		var blast = instance_create_layer(x, y, "Game", oLaserBlast)
	
		blast.shooter = self
		blast.sprite_index = blast_sprite
		blast.image_angle = image_angle - 90
		blast.origin_x = x
		blast.origin_y = y
		blast.blast_distance = blast_distance
		blast.blast_speed = blast_speed
		blast.damage = blast_damage
		blast.angulation = blast.image_angle
	}
}else{
	blast_rate_timer++
	
	if (blast_rate_timer > blast_rate){
		blast_rate_timer = 0
	}
}

// Alterar velocidade com base no timeout
if (speed_change_time == 0){
	speed_change_time += 1
	
	if (keyboard_check(increase_speed_key)  && c_speed < max_c_speed){
		c_speed += global.SPEED_CHANGE_RATE
	}else if (keyboard_check(decrease_speed_key)  && c_speed > 0){
		c_speed -= global.SPEED_CHANGE_RATE
	}else{
		speed_change_time -= 1
	}
}else{
	speed_change_time += 1
	
	if (speed_change_time > global.SPEED_CHANGE_TIMEOUT){
		speed_change_time = 0
	}
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

// Recuperar hp

if (hp >= hp_max){
	hp = hp_max
}else{
	hp += hp_recover_frames
}

hp_percent = (hp / hp_max) * 100


if (hp <= 0){
	room_goto(gameover)
}
