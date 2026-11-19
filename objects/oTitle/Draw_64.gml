draw_set_colour(c_white)
draw_set_font(title)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width / 2, room_height / 3, "Perseverance");
draw_text(room_width / 2, (room_height / 3) + 200, "Press SPACE to Play");

show_debug_message("Draw GUI running");