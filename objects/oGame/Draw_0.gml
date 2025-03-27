draw_set_font(global.GAMEFONT)

var hp_sprites = ["H", "P"]

index_hp++

if (index_hp < 0 or index_hp > array_length(hp_sprites)){
	index_hp = 0
}

draw_text(global.DRAW_SPACING, get_drawy_position(2, global.DRAW_SPACING), hp_sprites[index_hp])
draw_text(global.DRAW_SPACING, get_drawy_position(1, global.DRAW_SPACING), "S"+string(global.PLAYER.c_speed)+"/"+string(global.PLAYER.max_c_speed))