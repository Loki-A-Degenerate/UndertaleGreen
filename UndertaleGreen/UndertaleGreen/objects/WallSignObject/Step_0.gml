if global.selectButtonPressed
{
	with instance_create_layer(0, 0, "Instances", BasicTextBox)
	{
		TextScript(text);
	}
}