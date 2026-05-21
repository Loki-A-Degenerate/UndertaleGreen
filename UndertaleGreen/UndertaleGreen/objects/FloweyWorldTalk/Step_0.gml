depth = -bbox_bottom;

image_speed = talkSpeed;
mask_index = sprite[FORWARD];
if x + 12 < PlayerObject.x {face = RIGHT;}
if x - 12 > PlayerObject.x {face = LEFT;}
if y + 15 < PlayerObject.y {face = FORWARD}
if y - 8 > PlayerObject.y {face = BACK;}
sprite_index = sprite[face];

if !instance_exists(FloweyTextBox)
{
	with instance_create_layer(0, 0, "Instances", FloweyTextBox)
	{
		FloweySaveTestScript(FloweyWorldTalk.floweyID);
	}
}