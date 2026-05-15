if image_index <= 0
{
	image_index = 0;
	image_speed = 0;
	
	instance_create_layer(x, y, "Instances", FloweyWorldTalk);
	instance_destroy();
}