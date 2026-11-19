//gui items
draw_text(100,15, "Time " + string(ceil(global.time))) 
draw_text(room_width - 100, 15, "Score " +  string(global.gameScore))
draw_text(room_width - 100, 30, "Radiation " +  string(global.rad))
draw_text( 550, 15 , global.messageTxt)
// end conditions
if(global.gameScore = 54){
	global.gameState = "finished"
	room_goto(EndGame)
}

if(global.time <= 0){
	global.gameState = "out of time"
	room_goto(EndGame)
}


