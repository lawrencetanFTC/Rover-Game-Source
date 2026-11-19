draw_set_colour(c_white)
draw_set_font(title)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(global.gameState = "out of time"){
	draw_text(room_width / 2, room_height / 3, "Mission Failed");
	draw_text(room_width / 2, (room_height / 3) + 200, "Restart Game to try again");
}else if (global.gameState = "finished") {
	draw_text(room_width / 2, room_height / 3, "Mission Complete");
	draw_text(room_width / 2, (room_height / 3) + 200, "Score :" + string(global.gameScore));
}