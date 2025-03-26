function get_xy_angle(origin_x, origin_y, distance_origin, angle){
	// Calcula o X e Y apartir da origem numa distancia e angulo
	var rad_angle = degtorad(angle)
	
	var result_x = origin_x + distance_origin * cos(rad_angle)
	var result_y = origin_y - distance_origin * sin(rad_angle)
	
	return [result_x, result_y]
}