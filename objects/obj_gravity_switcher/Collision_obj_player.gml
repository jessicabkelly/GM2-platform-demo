if (current_time - last_gravity_switch_time > global.gravity_toggle_speed)
{
	last_gravity_switch_time = current_time;
	other.gravity_direction += 180;
}