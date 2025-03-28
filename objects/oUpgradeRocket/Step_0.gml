if (sprite_index == sRocket){
	upgrade_time -= 1

	if (upgrade_time <= 0){
		sprite_index = sRocketAvaliable
		upgrade_time = upgrade_time_max
	}
}else if (sprite_index == sRocketAvaliable){
	if (keyboard_check(get_upgrade_key)){
		sprite_index = sRocketFire
	}
}else if (sprite_index == sRocketFire){
	move_towards_point(global.PLAYER.x, global.PLAYER.y, fly_speed)
	image_angle = global.PLAYER.image_angle

}
