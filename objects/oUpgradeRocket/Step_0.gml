if (sprite_index == sRocket){
	upgrade_time += 1
	upgrade_perc = (upgrade_time/upgrade_time_max)*100

	if (upgrade_time >=  upgrade_time_max){
		sprite_index = sRocketAvaliable
		upgrade_time = upgrade_time_max
	}
}else if (sprite_index == sRocketAvaliable){
	if (keyboard_check(get_upgrade_key)){
		sprite_index = sRocketFire
	}
}else if (sprite_index == sRocketFire){
	speed  = o_fly_speed
	if (!action_finished){
		move_towards_point(global.PLAYER.x, global.PLAYER.y, speed)
		image_angle = global.PLAYER.image_angle
	}else{
		move_towards_point(original_x, original_y, speed)
		image_angle = original_angle
		
		// Para parar logo com a bagaçeira
		if (distance_to_point(original_x, original_y) <= 5){
			sprite_index = sRocket
			x = original_x
			y = original_y
			action_finished = false
			speed = 0
			upgrade_time = 0
			upgrade_perc = 0
			colided = false
			global.card_selection = 0
			global.card_selection_instance = global.basecard
		}
	}
}
