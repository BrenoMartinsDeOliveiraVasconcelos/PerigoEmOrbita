current_rotation_angle += rotation_speed

if (current_rotation_angle < 0 or current_rotation_angle > 360){
	current_rotation_angle = 0
}

image_angle = current_rotation_angle

distance -= velocity

var new_xy = get_xy_angle(global.PLANET.x, global.PLANET.y, distance, angulation)

x = new_xy[0]
y = new_xy[1]


// Destruir em caso de HP < 0
if (hp <= 0){
	instance_create_layer(x, y, "Player", oExplosion)
	instance_destroy()
}
