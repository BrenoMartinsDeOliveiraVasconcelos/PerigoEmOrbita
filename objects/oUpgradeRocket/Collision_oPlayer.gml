if (sprite_index == sRocketFire && !colided){
	colided = true
	// Parar de spawnar asteroides temporariamente
	var og_asteroid_max = global.MAX_ASTEROID_COUNT
	global.MAX_ASTEROID_COUNT = 0
	
	// Criar cartas
	var divisions =3// Divide a tela em três para saber quantos x pular
	
	var spacing =  global.basecard.sprite_width * global.CARDS_PADDING
	var card_area = global.basecard.sprite_width + spacing  // Área da carta
	
	var xcoord = global.CARDS_PADDING + global.basecard.sprite_width/2 // Coordenada inicial para respeitar o padding
	var ycoord = room_height/2
	
	var xcounter = 0
	
	for (var i=0; i<divisions; i++){
		var card = instance_create_layer(xcoord, ycoord, "Screen", oCard)
		card.number = i+1 // Assignar um número
		
		array_insert(global.cards, array_length(global.cards) ,card)
		
		xcounter += (card.sprite_width + spacing)
		xcoord += card_area
	}
	
	xcounter -= spacing
	
	// Arredar ao meio para centralizar
	var middle_card = xcounter / 2 // O meio das cartas
	var diff_from_xcenter = abs(middle_card - (room_width / 2))
	
	for (var cardn = 0; cardn < array_length(global.cards); cardn++){
		var card = global.cards[cardn]
		
		card.x += diff_from_xcenter
	}
	
}