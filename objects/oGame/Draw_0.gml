draw_set_font(global.GAMEFONT)


draw_text(global.DRAW_SPACING, get_drawy_position(2, global.DRAW_SPACING), "H"+string(global.PLAYER.hp_percent)+"P")
draw_text(global.DRAW_SPACING, get_drawy_position(1, global.DRAW_SPACING), "S"+string(global.PLAYER.c_speed)+"/"+string(global.PLAYER.max_c_speed))