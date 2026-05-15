depth = -bbox_bottom;

if image_index >= image_number - 1
{
	image_index = image_number - 1;
	image_speed = 0;
	
	instance_create_layer(x, y, "Instances", FloweyWorldTalk);
	instance_destroy();
}