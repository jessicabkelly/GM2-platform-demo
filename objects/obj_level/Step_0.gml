if (mouse_check_button(mb_left) && current_time - last_clicky_time > global.clicky_speed)
{
	last_clicky_time = current_time;
	var number_of_platforms = array_length(clicky_platform_array);
	if (number_of_platforms == num_platforms_at_any_time)
	{
		// destroy earliest platform
		instance_destroy(clicky_platform_array[0]);
		// shift left		
		for (var i = 0; i < number_of_platforms - 1; i++)
		{
			
			clicky_platform_array[i] = clicky_platform_array[i+1];			
		}
	}
	if (number_of_platforms < num_platforms_at_any_time)
	{
		clicky_platform_array[number_of_platforms] = instance_create_layer(mouse_x - global.sprite_size_px / 2, mouse_y - global.sprite_size_px / 2, "Instances", obj_clicky_platform);
	}
	else 
	{
		clicky_platform_array[num_platforms_at_any_time - 1] = instance_create_layer(mouse_x - global.sprite_size_px / 2, mouse_y - global.sprite_size_px / 2, "Instances", obj_clicky_platform);
	}
	
}