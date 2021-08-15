// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawn_asteroids(number_of_asteroids) {
	for (var i = 0; i < number_of_asteroids; i += 1) {
		var side = choose(1,2,3,4)
		var xx, yy
		if (side == 1) {
			xx = 0
			yy = random(room_height)
		}
		if (side == 2) {
			xx = room_width
			yy = random(room_height)
		}
		if (side == 3) {
			xx = random(room_width)
			yy = 0
		}
		if (side == 4) {
			xx = random(room_width)
			yy = room_height
		}
		var new_ast = instance_create_layer(xx,yy,layer,obj_asteroid)
		new_ast.direction = random(361)
		new_ast.speed = random(3)+1
		new_ast.image_index = 0
	}
}