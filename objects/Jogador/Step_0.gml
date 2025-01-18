#region Teclas
Esq = keyboard_check(ord("A")) || keyboard_check(vk_left);
Cima = keyboard_check(ord("W")) || keyboard_check(vk_space);
Baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);
Dir = keyboard_check(ord("D")) || keyboard_check(vk_right);
Reset = keyboard_check(ord("R"));
MouseDir = mouse_check_button(mb_right)

if keyboard_check(vk_shift) {
	spd = 10;
} else {
	spd = 5;
}

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
if (place_meeting(x + hspd, y, Chao)) {
    while (!place_meeting(x + sign(hspd), y, Chao)) {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

// Colisão vertical
if (place_meeting(x, y + vspd, Chao)) {
    while (!place_meeting(x, y + sign(vspd), Chao)) {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;

if place_meeting(x, y+1, Chao) and Cima {
	vspd -= 8
}
#endregion

#region ATK1
var gira = direction;
var arma_x = x+4(gira)
var _xx = x + lengthdir_x(15, mouse_x)
var _yy y + lengthdir_y(-20, mouse_y)

if (MouseDir and Flechas>0){
	with(instance_create_layer(_xx, y+10, "Tiros", Obj_Flecha){
		flechas--;
		speed = 10;
		direction = 
	}
}
#endregion