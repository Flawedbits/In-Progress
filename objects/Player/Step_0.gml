if (!place_meeting(x, y, [Water_Grass, Water_Bott, Water_Bott_Lef, Water_Bott_Righ, Water_Lef, Water_Righ, Water_To, Water_To_Lef, Water_To_Righ]))
{
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
} else {
	if keyboard_check(vk_up)
	{
		sprite_index=Player_Water_Up
		y -= 1
	}

	else if keyboard_check(vk_down)
	{
		sprite_index=Player_Water_Down
		y += 1
	}

	else if keyboard_check(vk_left)
	{
		sprite_index=Player_Water_Left
		x -= 1
	}

	else if keyboard_check(vk_right)
	{
		sprite_index=Player_Water_Right
		x += 1
	}

	else
	{
		sprite_index=Player_Water_Idle
	}
}