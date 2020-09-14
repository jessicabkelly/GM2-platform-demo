// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_handle_vertical_movement(obj){
	
	var gravity_multiplier = scr_determine_gravity_multiplier(obj);
	var on_the_ground = false;
	
	// correct for fallthrough, but only if "falling" (i.e. going with gravity)
	if ((gravity_multiplier <= 0 && obj.vspeed <= 0) || (gravity_multiplier > 0 && obj.vspeed >= 0))
	{
		while (place_meeting(obj.x, obj.y, obj_solid))
		{
			if (gravity_multiplier > 0)
			{
				obj.y = obj.y - 1;	
			} else 
			{
				obj.y = obj.y + 1;
			}
		}
	} else if ((gravity_multiplier <= 0 && obj.vspeed > 0) || (gravity_multiplier > 0 && obj.vspeed < 0))
	{
		while (place_meeting(obj.x, obj.y, obj_solid))
		{
			if (gravity_multiplier > 0)
			{
				obj.y = obj.y + 1;
			} else 
			{
				obj.y = obj.y - 1;
			}
		}
	}
	
	if (gravity_multiplier > 0)
	{
		on_the_ground = place_meeting(obj.x, obj.y + 1, obj_standonable);
	} else {
		on_the_ground = place_meeting(obj.x, obj.y - 1, obj_standonable);	
	}
	
	var against_the_ceiling = false;
	
	if (gravity_multiplier > 0)
	{
		against_the_ceiling = place_meeting(obj.x, obj.y - 1, obj_solid);
	} else {
		against_the_ceiling = place_meeting(obj.x, obj.y + 1, obj_solid);
	}
	
	if (on_the_ground && keyboard_check(vk_space))
	{
		on_the_ground = false;
		obj.vspeed = -1 * global.jump_vspeed * gravity_multiplier;
	}
	
	if (!on_the_ground)
	{
		obj.gravity += global.gravity_tick;
	}
	
	if (on_the_ground)
	{
		obj.gravity = 0;
		obj.vspeed = 0;
	}
	
	if (!on_the_ground && against_the_ceiling)
	{
		obj.vspeed = -1 * gravity_multiplier * global.bounce_speed;
		// let gravity take its course
	}
}