function createMercyMenu() 
{
	with instance_create_layer(0, 0, "Instances", BattleMenuBoxObject) 
	{
		subMenu = "Mercy";
	}
	instance_destroy(BattleBoxIntroObject);
}