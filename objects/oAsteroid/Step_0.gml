

current_rotation_angle += rotation_speed

if (current_rotation_angle < 0 or current_rotation_angle > 360){
	current_rotation_angle = 0
}

image_angle = current_rotation_angle

distance -= velocity
acumulated_speed = velocity * distance

var new_xy = get_xy_angle(global.PLANET.x, global.PLANET.y, distance, angulation)

x = new_xy[0]
y = new_xy[1]

// Boost no score dado ao player
var acumulated_speed_number = calculate_influence(acumulated_speed_influence, base_score, acumulated_speed)
var damage_num = calculate_influence(damage_influence, base_score, damage)

actual_score = base_score + (acumulated_speed_number + damage_num)
show_debug_message(string(actual_score))

// Destruir em caso de HP < 0
if (hp <= 0){
	instance_create_layer(x, y, "Player", oExplosion)
	instance_destroy()
}


