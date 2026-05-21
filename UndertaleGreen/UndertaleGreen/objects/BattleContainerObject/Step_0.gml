if !instance_exists(BattleBoxObject)
{
	with instance_create_layer(0, 0, "Instances", BattleBoxObject)
	{
		TextScript("This is sample text.");
	}
}

for (var i = 0; i < array_length(battleButtons); i++)
{
	if !instance_exists(battleButtons[i])
	{
		instance_create_layer(16 + (78 * i), 216, "Instances", battleButtons[i]);
	}
}

if keyboard_check_pressed(vk_left)
{
	selected--;
}
else if keyboard_check_pressed(vk_right)
{
	selected++;
}

if selected > 3
{
	selected = 0;
}
if selected < 0
{
	selected = 3;
}