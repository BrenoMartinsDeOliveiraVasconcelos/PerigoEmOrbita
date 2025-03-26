global.ORBIT_DISTANCE = 64 // Distancia do ponto de orgem
global.START_ANGLE = 0

// Adicionar o planeta
global.PLANET = instance_create_layer(room_width/2, room_height/2, "Game", oPlanet)

// Adicionar o player
global.PLAYER = instance_create_layer(room_width/2, room_height/2, "Game", oPlayer)

// Colocar o player na órbita

xy_player = get_xy_angle(global.PLANET.x, global.PLANET.y, global.ORBIT_DISTANCE, global.START_ANGLE)

global.PLAYER.x = xy_player[0]
global.PLAYER.y = xy_player[1]

global.GAMEFONT = font_add_sprite_ext(gamefont, "AKM0123456789/S ", false, 0)

global.DRAW_SPACING = 10
