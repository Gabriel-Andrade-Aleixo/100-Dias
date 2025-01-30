switch (state){
	case InimigoState.IDLE: InimigoStateIdle (); break;
	case InimigoState.CHASE: InimigoStateSegue(); break;
	case InimigoState.ATKENEMIGO: InimigoStateATK(); break;
}

if state = InimigoState.IDLE{
	hspd = 0;
	sprite_index = Enemigo;
}

if state = InimigoState.ATKENEMIGO{
	hspd = 0;
	sprite_index = EnemigoAtk;
}

if state = InimigoState.CHASE{
	sprite_index = EnemigoAnd;
	image_speed = 2;
}

if (image_index == image_number - 1) {
	if (distance_to_object(Jogador) < 50){
		global.vida -= 1;
	}
}

if (VidaMonstro == 0){
	instance_destroy();
}

if (place_meeting(x, y, Jogador)) {
	time_dano += 1;
	if (time_dano >= time_EntreDano){
		global.vida -= 1;
		time_dano = 0;
	}
}
else {
	time_dano = 0;
}