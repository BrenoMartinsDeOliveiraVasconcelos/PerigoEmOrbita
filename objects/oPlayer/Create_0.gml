down_key = vk_down
up_key = vk_up
rotation_up_key =  ord("X")
rotation_down_key =  ord("Z")
increase_speed_key = ord("N")
decrease_speed_key = ord("M")
shoot_key = vk_enter

hp = 100
hp_max = 100
hp_recover_frames = 0.0005 // Quanto HP recupera por frame
hp_percent = (hp / hp_max) * 100
points = 0
blast_sprite = sBlast
blast_speed = 5
blast_distance = 128
blast_rate = 15  // Em frames
blast_damage = 5
current_angle = global.START_ANGLE // angulo atual
rotation_angle = image_angle
c_speed = 1.25
max_c_speed = 1.25
original_speed = max_c_speed
rotation_speed = 1.5

speed_change_time = 0
blast_rate_timer = 0
