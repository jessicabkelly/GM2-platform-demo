scr_handle_horiz_movement(obj_player);
scr_handle_vertical_movement(obj_player);

if (y > global.max_y + global.sprite_size_px)
{
	room_restart();
}