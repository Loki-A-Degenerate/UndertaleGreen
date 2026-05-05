mask_index = sprite[FORWARD];

image_speed = 0.13;
if xSpeed > 0 {face = RIGHT};
if xSpeed < 0 {face = LEFT};

if ySpeed > 0 {face = FORWARD};
if ySpeed < 0 {face = BACK};
sprite_index = sprite[face];