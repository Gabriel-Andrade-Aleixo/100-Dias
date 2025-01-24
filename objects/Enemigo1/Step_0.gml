switch (state){
	case InimigoState.IDLE: InimigoStateIdle (); break;
	case InimigoState.CHASE: InimigoStateSegue(); break;
	case InimigoState.ATKENEMIGO: InimigoStateATK(); break;
}