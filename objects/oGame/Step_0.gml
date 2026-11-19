global.time = global.time - .02
//since this is run way less than once per second, i don't increment by 1
// check center for rad time removal

var _cx = floor(room_width / 2);
var _cy = floor(room_height / 2);
var _range = 50; // 50px in each direction from center

var _in_zone = rectangle_in_rectangle(
    oRover.bbox_left, oRover.bbox_top, oRover.bbox_right, oRover.bbox_bottom,
    _cx - _range, _cy - _range, _cx + _range, _cy + _range
) > 0;

if (global.rad > 70) {
    global.messageTxt = "Radiation is too high, go to the center to hide it out";

    if (!_in_zone) {
        global.time -= 0.05;
    }
} 
else if (global.messageTxt == "Radiation is too high, go to the center to hide it out") {
    global.messageTxt = "Nothing to report";
}

// Sinusoidal radiation: 20 to 90 over 35s (1050 steps at 30fps)
global.rad = 55 - 35 * cos(rad_timer * (pi / 1050));
rad_timer += 1;

//scoring and message handling are in the destroy commands for each objects
// they each increment the score and change the gui message

// Comment explaining science: the rock samples can contain minerals that are produced by microbes,  or organic molecules in rock
// so it can be used as evidence that there were life

//sinusoidal radiation changes
// Starts at 20, peaks at 90 after 35 seconds (1050 steps), returns to 20 at 70 seconds
global.rad = 55 - 35 * cos(rad_timer * (pi / 1050));
rad_timer++