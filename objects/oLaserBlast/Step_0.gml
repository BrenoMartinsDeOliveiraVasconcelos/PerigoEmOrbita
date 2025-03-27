// Andar da bala

flied_distance += blast_speed

var next_xy = get_xy_angle(origin_x, origin_y, flied_distance, angulation)

x = next_xy[0]
y = next_xy[1]

if (flied_distance > blast_distance){
	instance_destroy()
}
