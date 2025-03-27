draw_set_font(global.GAMEFONT)

var hpText = "E"+string(global.PLANET.hp_percent)+"P"
var fontTextSize = string_length(hpText) * 8

draw_text((global.PLANET.x-fontTextSize/2), global.PLANET.y-(global.PLANET.sprite_height/2), hpText)
draw_text(global.DRAW_SPACING, get_drawy_position(2, global.DRAW_SPACING), "H"+string(global.PLAYER.hp_percent)+"P")
draw_text(global.DRAW_SPACING, get_drawy_position(1, global.DRAW_SPACING), "S"+string(global.PLAYER.c_speed)+"/"+string(global.PLAYER.max_c_speed))

draw_set_font(global.SCOREFONT)

global.PLAYER.points = round(global.PLAYER.points)
var scorestr = "A" + string(global.PLAYER.points) + "Z"
var scoresize = string_length(scorestr) * 16

var dx = room_width / 2
var dy = room_height * 0.10

draw_text(dx-scoresize/2, dy, scorestr)


