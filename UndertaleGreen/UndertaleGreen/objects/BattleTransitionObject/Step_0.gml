if (!soulMove) // I can definitely replace this with something
{
    flashCount = 3;
    flashTimer = 0;
    flashing = true;

    soulMove = true;
}

if flashing
{
    flashTimer--;

    if flashTimer <= 0
    {
        audio_play_sound(ButtonPress, 0, false); // It's the same sound
        flashVisible = !flashVisible;

        flashCount--;

        flashTimer = flashInterval;

        if (flashCount <= 0)
        {
            flashing = false;
        }
    }
}
else 
{
	if !soundMove
	{
		audio_play_sound(BattleStartSound, 0, false);
		soundMove = true;
	}
	if !instance_exists(SoulBattleTransObject)
	{
		with instance_create_layer(soulX, soulY, "Instances", SoulBattleTransObject)
		{
			savedX = PlayerObject.x;
			savedY = PlayerObject.y;
		}
		instance_destroy(PlayerObject);
	}
}