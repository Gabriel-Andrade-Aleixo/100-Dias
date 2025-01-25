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


