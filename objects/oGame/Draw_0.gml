draw_set_font(global.GAMEFONT)

var fontTextSize = string_length("E"+string(global.PLANET.hp_percent)+"P") * 8

draw_text((global.PLANET.x-fontTextSize/2), global.PLANET.y-(global.PLANET.sprite_height/2), "E"+string(global.PLANET.hp_percent)+"P")
draw_text(global.DRAW_SPACING, get_drawy_position(2, global.DRAW_SPACING), "H"+string(global.PLAYER.hp_percent)+"P")
draw_text(global.DRAW_SPACING, get_drawy_position(1, global.DRAW_SPACING), "S"+string(global.PLAYER.c_speed)+"/"+string(global.PLAYER.max_c_speed))