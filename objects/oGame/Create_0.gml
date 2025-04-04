randomise()

fullscreen_key = vk_f11
exit_key = vk_f4

global.ORBIT_DISTANCE = 64 // Distancia do ponto de orgem
global.MOON_DISTANCE = 72 // Distancia da lua do planeta
global.START_ANGLE = 0
global.ORBIT_DOT_DIVISOR = 1
global.SPEED_CHANGE_RATE = 0.25
global.SPEED_CHANGE_TIMEOUT = 10 // Em frames
global.ENTITY_SPAWN_DISTANCE = 1.5  // Em vezes o tamanho da sala
global.MAX_ASTEROID_SPEED = 0.35
global.MIN_ASTEROID_SPEED = 0.15
global.MIN_ASTEROID_DAMAGE = 5
global.MAX_ASTEROID_DAMAGE = 15
global.MIN_ASTEROID_BASE_SCORE = 10
global.MAX_ASTEROID_BASE_SCORE = 50
global.MAX_ASTEROID_COUNT = 2
global.ASTEROID_ENABLED = true
global.ASTEROID_CHANCE = 0.5 // Em porcentagem
global.CHANCE_MULTIPLIER = 1000 // Número usado para definir os números aleatórios de chnace
global.SCOREPOS = 0.10 // Porcentagem para localização do score
global.CARDS_PADDING = 0.10 // Porcantagem para distancia das cartas

// Adicionar o planeta
global.PLANET = instance_create_layer(room_width/2, room_height/2, "Game", oPlanet)

// Adicionar o player
global.PLAYER = instance_create_layer(room_width/2, room_height/2, "Player", oPlayer)

// Colocar o player na órbita

xy_player = get_xy_angle(global.PLANET.x, global.PLANET.y, global.ORBIT_DISTANCE, global.START_ANGLE)

// Gerar a imagem da órbita
var alpha_increase = 0
for (var dist=global.ORBIT_DISTANCE; dist>0; dist--){
	for (var angle=1; angle <= 360; angle++){
		dot_xy = get_xy_angle(global.PLANET.x, global.PLANET.y, dist, angle)
		dotx = dot_xy[0]
		doty = dot_xy[1]
	
		if (angle % global.ORBIT_DOT_DIVISOR == 0){
			orbit = instance_create_layer(dot_xy[0], dot_xy[1], "Effects", oOrbit)
			orbit.image_alpha = 0 + alpha_increase
		}
	}
	alpha_increase += 0.015
}


// Spawnar a lua
global.MOON = instance_create_layer(global.PLANET.x+global.MOON_DISTANCE , global.PLANET.y-global.MOON_DISTANCE, "Game", oMoon)


// Spawnar foguete
global.UPGRADE_ROCKET = instance_create_layer(global.MOON.x, global.MOON.y-(global.MOON.sprite_height/2), "Game", oUpgradeRocket)


// Ajustar para ficar em cima exatamente
global.UPGRADE_ROCKET.y = global.UPGRADE_ROCKET.y - (global.UPGRADE_ROCKET.sprite_height/2)


global.PLAYER.x = xy_player[0]
global.PLAYER.y = xy_player[1]

global.GAMEFONT = font_add_sprite_ext(gamefont, "AKM0123456789/S .HPE-U", false, 0)
global.SCOREFONT = font_add_sprite_ext(scorefont, "A0123456789-.Z", false, 0)

global.DRAW_SPACING = 10

index_hp = 0
change_index_time = 30 // Em grames

global.basecard = instance_create_layer(room_width*3, room_height*3, "Screen", oCard)
global.cards = []
global.card_selection  = 0
global.card_selection_instance = global.basecard
global.card_gui = oCardGui
global.ok_card = oOkCard
global.cancel_card = oCancelCard
