if (mouse_check_button(mb_left) && current_time - last_clicky_time > global.clicky_speed)
{
	instance_create_layer(mouse_x - global.sprite_size_px / 2, mouse_y - global.sprite_size_px / 2, "Instances", obj_clicky_platform);
}