if y - 8 > PlayerObject.y
{
	depth = 2 - bbox_bottom;
}
else
{
	depth = -9000;	
}

mask_index = sprite[FORWARD];
if x + 12 < PlayerObject.x {face = RIGHT;}
if x - 12 > PlayerObject.x {face = LEFT;}
if y + 15 < PlayerObject.y {face = FORWARD}
if y - 8 > PlayerObject.y {face = BACK;}
sprite_index = sprite[face];