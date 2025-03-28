hp += hp_recorvery_rate 

if (hp >= hp_max){
	hp = hp_max
}

hp_percent = (hp / hp_max) * 100

if (hp <= 0){
	room_goto(gameover)
}


