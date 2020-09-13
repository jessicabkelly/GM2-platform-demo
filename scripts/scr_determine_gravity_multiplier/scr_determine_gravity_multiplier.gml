// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_determine_gravity_multiplier(obj){
	
	if (obj.gravity_direction % 360 == 270)
	{
		return 1;
	} else 
	{
		return -1;
	}

}