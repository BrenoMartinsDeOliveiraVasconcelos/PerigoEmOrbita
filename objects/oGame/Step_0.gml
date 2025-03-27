// Criar asteroides aleatoriamente
var asteroid_chance = global.ASTEROID_CHANCE * global.CHANCE_MULTIPLIER

if (random_range(0, 1000) <= asteroid_chance){
	var ast = instance_create_layer(room_width*2, room_height*2, "Player", oAsteroid)
	ast.distance = random_range(room_width, room_width*2)
	ast.current_rotation_angle = random_range(0, 360)
	ast.angulation = random_range(0, 360)
	ast.velocity = random_range(global.MIN_ASTEROID_SPEED, global.MAX_ASTEROID_SPEED)
	ast.rotation_speed = random_range(0, 360)
	ast.damage = random_range(global.MIN_ASTEROID_DAMAGE, global.MAX_ASTEROID_DAMAGE)
	ast.base_score = random_range(global.MIN_ASTEROID_BASE_SCORE, global.MAX_ASTEROID_BASE_SCORE)
}