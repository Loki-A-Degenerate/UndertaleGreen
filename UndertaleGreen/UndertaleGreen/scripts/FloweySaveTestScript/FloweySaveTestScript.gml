function FloweySaveTestScript(_textID)
{
	switch _textID
	{
		case 0: // Ruins campsite
			TextScript("Wow, this place is very cozy.");
			TextScript("I kinda just wanna stay here.");
			break;
		default:
			TextScript("This is a test of sorts");
			TextScript("If this shows up at a time it's not supposed to.");
			TextScript("Then I am very dumb");
			break;
	}
}