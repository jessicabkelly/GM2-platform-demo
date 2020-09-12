x += scr_handle_horiz_movement(x);

if !place_meeting(x, y + 1, obj_solid)
{
   gravity = 0.01;
}
else
{
   gravity = 0;
}