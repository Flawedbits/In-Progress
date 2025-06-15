keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyInteract = keyboard_check_pressed(vk_space);
keyInventory = keyboard_check_pressed(vk_control);

// Movimento desejado
var moveX = keyRight - keyLeft;
var moveY = keyDown - keyUp;

// Apply speed independently to each axis (I hate slowing down when walking diagonally, f#ck physics)
hSpeed = moveX * speedWalk;
vSpeed = moveY * speedWalk;

// Verificar se há colisão com o movimento pretendido
var willMoveX = !place_meeting(x + hSpeed, y, Obj_Wall);
var willMoveY = !place_meeting(x, y + vSpeed, Obj_Wall);

// SPRITE: virar para a direção pressionada, mesmo se não for possível mover
if (moveX != 0) {
    sprite_index = (moveX < 0) ? Player_Left : Player_Right;
} else if (moveY != 0) {
    sprite_index = (moveY < 0) ? Player_Up : Player_Down;
}

// ANIMAÇÃO: só anima se vai realmente mover
if ((moveX != 0 && willMoveX) || (moveY != 0 && willMoveY)) {
    if (first) {
        image_index = 1;
        first = false;
    }
} else {
    first = true;
    image_index = 0;
}

// Movimento físico
if (willMoveX) x += hSpeed;
if (willMoveY) y += vSpeed;

// Profundidade
depth = -bbox_bottom;
