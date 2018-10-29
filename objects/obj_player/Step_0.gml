//Movement!!!!!!
if (keyboard_check(vk_right)) x = x + 2.5;
if (keyboard_check(vk_left)) x = x + -2.5;

if (keyboard_check(vk_up)) y = y + -2.5;
if (keyboard_check(vk_down)) y = y + 2.5;

image_angle = point_direction (x,y,mouse_x,mouse_y);

//shoot
if(mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer (x, y, "BulletsLayer", obj_bullet)
	cooldown=20;
}

cooldown = cooldown - 1;