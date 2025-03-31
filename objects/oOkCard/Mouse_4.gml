if (global.card_selection > 0){
	// Adicionar o buff
	switch global.card_selection_instance.sprite_index{
		case card_speed:
		
		if (global.PLAYER.max_c_speed == global.PLAYER.original_speed){
			global.MAX_ASTEROID_COUNT = global.UPGRADE_ROCKET.og_asteroid_max * 2
			global.UPGRADE_ROCKET.og_asteroid_max = global.MAX_ASTEROID_COUNT
		}
		
			global.PLAYER.max_c_speed *= 1.25
			global.PLAYER.c_speed = global.PLAYER.max_c_speed
			break
		case recover_speed_card:
		global.PLAYER.hp_recover_frames *= 1.5
		break
	}
	
	global.card_selection_instance.is_confirm = true
}