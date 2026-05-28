// Place the battle buttons
for (var i = 0; i < array_length(battleButtons); i++)
{
	if !instance_exists(battleButtons[i])
	{
		instance_create_layer(elementsLeftX + (buttonSpacing * i), battleButtonY, "Instances", battleButtons[i]);
	}
}