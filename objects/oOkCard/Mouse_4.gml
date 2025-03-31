if (global.card_selection > 0){
	// Adicionar o buff
	switch global.card_selection_instance.sprite_index{
		case card_speed:
			
			// Aumenta a quantidade de asteroides a cada upgrade de velocidade
			global.MAX_ASTEROID_COUNT = global.UPGRADE_ROCKET.og_asteroid_max + 1
			global.UPGRADE_ROCKET.og_asteroid_max = global.MAX_ASTEROID_COUNT
		
			global.PLAYER.max_c_speed += 0.25
			global.PLAYER.c_speed = global.PLAYER.max_c_speed
			break
		case recover_speed_card:
		// Side effect: Dano máximo do asteroide aumenta
		global.MAX_ASTEROID_DAMAGE += 1
		
		global.PLAYER.hp_recover_frames *= 1.25
		break
	}
	
	global.card_selection_instance.is_confirm = true
}