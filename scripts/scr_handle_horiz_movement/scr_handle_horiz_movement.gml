// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_handle_horiz_movement(obj){
	obj.hspeed = 0;
	if (keyboard_check(ord("D")) && keyboard_check(vk_lshift))
	{
		if (obj.x + global.sprite_size_px < global.max_x)
		{
			obj.hspeed = global.booster_speed;
		}
	} else if (keyboard_check(ord("D")))
	{
		// move right		
		if (obj.x + global.sprite_size_px < global.max_x)
		{
			obj.hspeed = global.movement_increment;
		}
	}
	
	if (keyboard_check(ord("A")) && keyboard_check(vk_lshift))
	{	
		if (obj.x > 0)
		{
			obj.hspeed = -1 * global.booster_speed;
		}
	}
	else if (keyboard_check(ord("A")))
	{
		// move left		
		if (obj.x > 0)
		{
			 obj.hspeed = -1 * global.movement_increment;
		}		
	}
}