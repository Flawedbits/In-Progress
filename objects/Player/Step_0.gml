if keyboard_check(vk_up)
{
	sprite_index=Player_Up
	y -= 1
}

else if keyboard_check(vk_down)
{
	sprite_index=Player_Down
	y += 1
}

else if keyboard_check(vk_left)
{
	sprite_index=Player_Left
	x -= 1
}

else if keyboard_check(vk_right)
{
	sprite_index=Player_Right
	x += 1
}

else
{
	sprite_index=Player_Idle
}

//depth 
depth = -bbox_bottom;