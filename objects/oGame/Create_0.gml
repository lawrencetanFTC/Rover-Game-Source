draw_set_font(UIfont)
global.time = 150;
// it ticks at .02 per cycle, and the shown one is simply the cielled of the decimal
// when it reaches 0, the game ends
global.gameScore = 0;
// score is increased based on science targets 
// core = 2, oxy = 4, and weather = 6
// wehn the maximum score of 54 is reached, the game ends
global.rad = 20;
// hazard that increases time drain when not in the center when rad > 70
//system variables are initialized here

global.gameState = "running"

global.messageTxt = "Nothing to report"

rad_timer = 0;