hp -= other.damage

global.PLAYER.points -= (other.base_score / 2)

instance_destroy(other)