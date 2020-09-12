// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_handle_horiz_movement(obj){
	
	if (keyboard_check(ord("D")))
	{
		// move right
		var is_something_to_the_right = place_meeting(obj.x+1,obj.y-global.collision_delta,obj_solid);
		if (!is_something_to_the_right && (obj.x + global.sprite_size_px < global.max_x))
		{
			obj.x += global.movement_increment;
		}
	} else if (keyboard_check(ord("A")))
	{
		// move left
		var is_something_to_the_left = place_meeting(obj.x+1,obj.y-global.collision_delta,obj_solid);
		if (!is_something_to_the_left && (obj.x > 0))
		{
			 obj.x += -1 * global.movement_increment;
		}		
	}
}