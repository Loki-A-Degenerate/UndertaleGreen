// Inherit the parent event
event_inherited();

if endOfText
{
	show_debug_message("are we here?");
}

if battleStart
{
	boxWidth -= boxSizeChange;
	if boxWidth <= boxSmallWidth
	{
		boxWidth = boxSmallWidth;
	}
}
else
{
	boxWidth += boxSizeChange;
	if boxWidth >= boxLargeWidth
	{
		boxWidth = boxLargeWidth;
	}
}