if (global.card_selection > 0){
	// Adicionar o buff
	switch global.card_selection_instance.sprite_index{
		case card_speed:
		
		if (global.PLAYER.max_c_speed == global.PLAYER.original_speed){
			global.MAX_ASTEROID_COUNT *= 2
		}
		
			global.PLAYER.max_c_speed *= 1.25
			global.PLAYER.c_speed = global.PLAYER.max_c_speed
			break
	}
	
	global.card_selection_instance.is_confirm = true
}