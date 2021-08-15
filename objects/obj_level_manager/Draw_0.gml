/// @description Insert description here
// You can write your code in this editor
var xx = room_width / 2, yy = room_height / 2
var str = string(countdown)
if(countdown > 0) {
	var l = string_length(str)
	var w = string_width("A")
	var h = string_height("A")
	var s = 10
	xx -= w*l/2*s
	yy -= h/2*s
	draw_set_color(c_white)
	//draw_text_ext_transformed(xx, yy, str,1,1,s,s,0)
	//draw_text(xx, yy, str)
	draw_text(10, 10, str)
}
