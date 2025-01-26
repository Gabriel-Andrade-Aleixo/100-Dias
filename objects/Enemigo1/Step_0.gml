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

if (image_index >= image_number - 1) {
	if (distance_to_object(Jogador) < 50){
		global.vida --;
	}
}