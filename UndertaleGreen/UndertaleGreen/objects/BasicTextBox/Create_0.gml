box = MenuSprite;
frame = -1;

boxLeftX = 16;
boxTopY = 160;

boxWidth = 289;
boxHeight = 76;

text = "If you're seeing this, I did something very wrong.";
textIndex = 0;
textSpeed = 0.2;

textSound = GenTextSound;

prevTextIndex = 0;

function on_text_advance()
	{
		instance_destroy();
	}