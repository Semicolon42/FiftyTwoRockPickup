/// @description Insert description here
// You can write your code in this editor
life -= 1
if (life <= 0) instance_destroy(id)

ast = collision_line(x,y,xprevious,yprevious,obj_asteroid,true,true)
if (instance_exists(ast)) {
	with(ast) {
		if (image_index >= sprite_get_number(sprite_index) - 1) {
			instance_destroy(id)
		} else {
			image_index += 1
			direction = random(361)
			speed = random(3)+1
			for (var i = 0; i < 2; i += 1) {
				new_ast = instance_create_layer(x,y,layer,obj_asteroid)
				new_ast.direction = random(361)
				new_ast.speed = random(3)+1
				new_ast.image_index = image_index
			}
		}
	}
	instance_destroy(id)
}


scr_wrapThisObjectScreen()