#region Teclas
Esq = keyboard_check(ord("A")) || keyboard_check(vk_left);
Cima = keyboard_check(ord("W")) || keyboard_check(vk_space);
Baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);
Dir = keyboard_check(ord("D")) || keyboard_check(vk_right);
Reset = keyboard_check(ord("R"));

if (Reset) {
    x = 250;
    y = 250;
    hspd = 0;
    vspd = 0;
}
#endregion

#region Movimento
var move = Dir - Esq;
hspd = move * spd;
vspd += grv;

// Inverte a escala de imagem para direção do movimento
//if (hspd != 0) image_xscale *= sign(hspd);

if (keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left)) and image_xscale>=0{
	image_xscale *= -1;
}
if (keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)) and image_xscale<=0{
	image_xscale *= -1;
}

// Colisão horizontal
if (place_meeting(x + hspd, y, Object3)) {
    while (!place_meeting(x + sign(hspd), y, Object3)) {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

// Colisão vertical
if (place_meeting(x, y + vspd, Object3)) {
    while (!place_meeting(x, y + sign(vspd), Object3)) {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;

if place_meeting(x, y+1, Object3) and Cima {
	vspd -= 8
}
#endregion
