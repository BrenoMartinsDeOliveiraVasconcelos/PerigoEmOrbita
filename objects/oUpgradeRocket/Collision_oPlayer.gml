if (sprite_index == sRocketFire && !colided){
	colided = true
	// Parar de spawnar asteroides temporariamente
	global.ASTEROID_ENABLED = false
	
	// Criar cartas
	var divisions =3// Divide a tela em três para saber quantos x pular
	
	var spacing =  global.basecard.sprite_width * global.CARDS_PADDING
	var card_area = global.basecard.sprite_width + spacing  // Área da carta
	
	var xcoord = global.CARDS_PADDING + global.basecard.sprite_width/2 // Coordenada inicial para respeitar o padding
	var ycoord = room_height/2
	
	var xcounter = 0
	
	// Colocar o background
	global.card_gui = instance_create_layer(room_width/2, room_height/2, "Screen", oCardGui)
	
	// Colocar as cartas
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

	// Criar botão OK centralizado horizontalmente
	global.ok_card = instance_create_layer(room_width/2, global.card_gui.y + global.card_gui.sprite_height/2, "Screen", oOkCard);

	// Posicionar botão Cancelar à esquerda do OK (considerando origem central)
	global.cancel_card = instance_create_layer(
	    global.ok_card.x - (global.ok_card.sprite_width), 
	    global.ok_card.y, 
	    "Screen", 
	    oCancelCard
	);

	// Calcular ponto médio entre os centros dos botões
	var middle_point = (global.ok_card.x + global.cancel_card.x) / 2;

	// Calcular diferença em relação ao centro da tela
	var diff_from_middle = middle_point - room_width/2;

	// Ajustar posição dos botões para centralizar o grupo
	global.ok_card.x -= diff_from_middle;
	global.cancel_card.x -= diff_from_middle;
	
}