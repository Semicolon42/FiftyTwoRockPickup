// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_wrapThisObjectScreen(){
	var rw = room_width, rh = room_height
	var sw = sprite_get_width(sprite_index) / 2
	var sh = sprite_get_height(sprite_index) / 2
	
	if (self.x < 0 - sw) {
		x = rw + sw
	} else if (self.x > rw + sw) {
		x = - sw
	}
	
	if (self.y < 0 - sh) {
		y = rh + sh
	} else if (self.y > rh + sh) {
		y = - sh
	}
}