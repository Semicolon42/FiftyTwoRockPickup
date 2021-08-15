/// @description Insert description here
// You can write your code in this editor

if (instance_number(obj_asteroid) <= 0 and countdown <= -1) {
	countdown = 100
} else if (countdown > 0) {
	countdown -= 1
} else if (countdown == 0) {
	level += level_increment
	scr_spawn_asteroids(level)
	countdown = -1
}