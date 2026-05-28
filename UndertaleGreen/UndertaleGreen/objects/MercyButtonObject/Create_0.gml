function createMercyMenu() 
{
	show_debug_message("Are we here?");
	with instance_create_layer(0, 0, "Instances", BattleMenuBoxObject) 
	{
		subMenu = "Mercy";
	}
	//instance_destroy(BattleBoxIntroObject);
}