window_set_size(1280,720)
window_center()

first = true;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.0;

keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("E"), vk_space);