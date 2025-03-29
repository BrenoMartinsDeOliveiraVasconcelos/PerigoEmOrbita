if (!assigned_sprite){
	sprite_index = card_sprites_und[number]
	assigned_sprite = true
}

if (number == global.card_selection){
	if (is_confirm){
		// Confirmar e deletar todas as cartas
		
		for (var c=0; c < array_length(global.cards); c++){
			var card = global.cards[c]

			if (c+1 != number){
				instance_destroy(card)
			}
		}
		
		global.cards = []
		global.card_selection = 0
		global.UPGRADE_ROCKET.action_finished = true
		global.MAX_ASTEROID_COUNT = global.UPGRADE_ROCKET.og_asteroid_max
		
		instance_destroy(global.card_gui)
		instance_destroy(global.ok_card)
		instance_destroy()
	}
}
