if (global.card_selection == 0){
	sprite_index = upgrades[random_range(0, array_length(upgrades)-1)]
	global.card_selection = number
	global.card_selection_instance = self
}