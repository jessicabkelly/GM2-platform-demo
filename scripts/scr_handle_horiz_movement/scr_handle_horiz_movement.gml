// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_handle_horiz_movement(obj){
	
	if (keyboard_check(ord("D")))
	{
		// move right		
		if (obj.x + global.sprite_size_px < global.max_x)
		{
			obj.hspeed = global.movement_increment;
		}
	} else if (keyboard_check(ord("A")))
	{
		// move left		
		if (obj.x > 0)
		{
			 obj.hspeed = -1 * global.movement_increment;
		}		
	} else 
	{
		obj.hspeed = 0;
	}
}