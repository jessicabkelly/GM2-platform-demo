global.movement_increment = 2;
global.jump_vspeed = 5;

global.max_x = 1366;
global.max_y = 768;

global.sprite_size_px = 64;
// since gravity is down, we only really care that we are sufficiently
// intersecting another object "below" us.  Left/Right checks are fine.
global.collision_delta = 5;