// Inherit the parent event
event_inherited();
//faceSprite.image_speed = 0.2;
if textIndex >= textLength[page]
{
	
	FloweyWorldTalk.talkSpeed = 0;
	FloweyWorldTalk.image_index = 0;
}
else
{
	FloweyWorldTalk.talkSpeed = 0.2;
}

if endOfText
{	
	if !instance_exists(SaveMenuObject)
	{
		with instance_create_layer(0, 0, "Instances", SaveMenuObject)
		{
			instance_activate_object(SaveObject);
			instance_create_layer(SaveObject.x + 10, SaveObject.y + 5, "Instances", FloweyWorldStillObject);
			instance_deactivate_object(SaveObject);
			instance_destroy(FloweyWorldTalk);
		}	
	}
	instance_destroy();
}