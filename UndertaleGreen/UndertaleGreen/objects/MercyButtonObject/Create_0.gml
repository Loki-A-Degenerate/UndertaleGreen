function createMercyMenu() 
{
	with instance_create_layer(0, 0, "Instances", BattleMercyBoxObject) 
	{
		subMenu = "Mercy";
	}
	instance_destroy(BattleBoxIntroObject);
}