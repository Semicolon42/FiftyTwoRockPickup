/// @description Insert description here
// You can write your code in this editor
ctrl_left = keyboard_check(vk_left)
ctrl_right = keyboard_check(vk_right)
ctrl_up = keyboard_check(vk_up)
ctrl_down = keyboard_check(vk_down)
ctrl_shoot = keyboard_check(ord("Z"))
ctrl_shoot_pressed = keyboard_check_pressed(ord("Z"))

accel = .1
turn_speed = 3
bullet_speed = 10
bullet_life = 30

if(ctrl_shoot_pressed) { 
	bullet = instance_create_layer(x,y,layer,obj_player_bullet)
	bullet.direction = image_angle
	bullet.speed = sqrt(sqr(xspd)+sqr(yspd)) + bullet_speed
	bullet.life = bullet_life
}


if(ctrl_left) {
	image_angle += turn_speed	
}
if(ctrl_right) {
	image_angle -= turn_speed
}
if(ctrl_up) { 
	xspd += accel * cos(degtorad(image_angle))
	yspd -= accel * sin(degtorad(image_angle))
}
if(ctrl_down) { 
	xspd *= .9
	yspd *= .9
	if(abs(xspd) < .005) xspd = 0
	if(abs(yspd) < .005) yspd = 0
}
x+=xspd
y+=yspd

scr_wrapThisObjectScreen()