function LevelNeededScript() {
    var tier = (global.lv - 1) div 5;
    
    var expNeeded = 0;

    switch tier {
        case 0: // LV 1–5
            expNeeded = global.lv * 20;
			break;
        case 1: // LV 6–10
            expNeeded = 100 + (global.lv - 5) * 100;
			break;
        case 2: // LV 11–15
            expNeeded = 500 + (global.lv - 10) * 500;
			break;
		case 3: // LV 16-20
			expNeeded = (global.lv - 15) * 5000;
			break;
    }
	if global.lv == 20 {
		expNeeded = 50000;
	}
	return expNeeded
}

function LevelUpScript(_EXP) {
	expNeeded = LevelNeededScript();
	if _EXP >= expNeeded {
		global.lv++;
		audio_play_sound(LVUp, 0, false);
		expNeeded = LevelNeededScript();
	}
	global.hp = 16 + (4 * global.lv);
	global.at = (2 * global.lv) - 2
	global.df = (global.lv - 1) div 4;
}