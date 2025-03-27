global.ORBIT_DISTANCE = 56 // Distancia do ponto de orgem
global.START_ANGLE = 0
global.ORBIT_DOT_DIVISOR = 1
global.SPEED_CHANGE_RATE = 0.25
global.SPEED_CHANGE_TIMEOUT = 10 // Em frames

// Adicionar o planeta
global.PLANET = instance_create_layer(room_width/2, room_height/2, "Game", oPlanet)

// Adicionar o player
global.PLAYER = instance_create_layer(room_width/2, room_height/2, "Game", oPlayer)

// Colocar o player na órbita

xy_player = get_xy_angle(global.PLANET.x, global.PLANET.y, global.ORBIT_DISTANCE, global.START_ANGLE)

// Gerar a imagem da órbita
for (var dist=global.ORBIT_DISTANCE; dist>0; dist--){
	for (var angle=1; angle <= 360; angle++){
		dot_xy = get_xy_angle(global.PLANET.x, global.PLANET.y, dist, angle)
		dotx = dot_xy[0]
		doty = dot_xy[1]
	
		if (angle % global.ORBIT_DOT_DIVISOR == 0){
			instance_create_layer(dot_xy[0], dot_xy[1], "Effects", oOrbit)
		}
	}
}

global.PLAYER.x = xy_player[0]
global.PLAYER.y = xy_player[1]

global.GAMEFONT = font_add_sprite_ext(gamefont, "AKM0123456789/SHP .", false, 0)

global.DRAW_SPACING = 10
