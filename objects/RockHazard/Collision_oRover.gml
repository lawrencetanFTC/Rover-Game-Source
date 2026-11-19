// collison code
if(not stepped){
	global.messageTxt= "You got stuck in a rockslide"
	self.sprite_index = Sprite7
	draw_self()
	global.time -= 10
	stepped = true
}

//cannot trigger twice per instance