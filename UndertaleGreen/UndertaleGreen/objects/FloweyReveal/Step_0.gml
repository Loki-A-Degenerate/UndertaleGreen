if image_index <= 0
{
	image_index = 0;
	image_speed = 0;
	
	var inst = instance_create_layer(x, y, "Instances", FloweyWorldTalk);
	inst.floweyID = floweyID;
	
	instance_destroy();
}