scr_handle_horiz_movement(obj_player);
scr_handle_vertical_movement(obj_player);

if (y > global.max_y + global.sprite_size_px)
{
	room_restart();
}

if (y < 0 - 3 * global.sprite_size_px) // if sufficiently above screen (gravity flip)
{
	room_restart();
}