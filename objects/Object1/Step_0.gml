a = keyboard_check(ord("A"));
w = keyboard_check(ord("W"));
s = keyboard_check(ord("S"));
d = keyboard_check(ord("D"));
r = keyboard_check(ord("R"));

if (a){
	x -= 5;
	shift_a = keyboard_check(vk_shift)
	if (shift_a){
		x -= 20;
	}
}

if (d){
	x += 5;
	shift_a = keyboard_check(vk_shift)
	if (shift_a){
		x += 20;
	}	
}

if (w){
	y -= 5;
	shift_a = keyboard_check(vk_shift)
	if (shift_a){
		y -= 20;
	}
}

if (s){
	y += 5;
	shift_a = keyboard_check(vk_shift)
	if (shift_a){
		y += 20;
	}	
}

if (r){
	y = 250;
	x = 250;
}