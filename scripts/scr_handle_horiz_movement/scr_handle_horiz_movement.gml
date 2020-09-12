// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// current_x - the x-value pre movement
// return x-offset to apply

function scr_handle_horiz_movement(current_x){
	
	if (keyboard_check(ord("D")))
	{
		// move right
		if (current_x + global.sprite_size_px < global.max_x)
		{
			return global.movement_increment;
		}
	} else if (keyboard_check(ord("A")))
	{
		// move left
		if (current_x > 0){
			return -1 * global.movement_increment;
		}		
	}
	return 0;
}