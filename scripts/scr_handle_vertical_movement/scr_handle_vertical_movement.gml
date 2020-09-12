// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_handle_vertical_movement(obj){
	
	var on_the_ground = place_meeting(obj.x, obj.y + 1, obj_solid);
	
	if (on_the_ground && keyboard_check(vk_space))
	{
		on_the_ground = false;
		obj.vspeed = -1 * global.jump_vspeed;
	}
	
	if (!on_the_ground)
	{
		obj.gravity += 0.05;
	}
	
	if (on_the_ground)
	{
		obj.gravity = 0;
		obj.vspeed = 0;
	}
}