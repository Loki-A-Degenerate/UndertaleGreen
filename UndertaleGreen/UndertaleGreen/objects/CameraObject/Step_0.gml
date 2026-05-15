timer += 1/game_get_speed(gamespeed_fps);
seconds = floor(timer mod 60);
minutes = floor(timer / 60);

fullClock = string(minutes) + ":" + string(seconds);