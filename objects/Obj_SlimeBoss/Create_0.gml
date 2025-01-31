spd = 10;
hspd = 0;
vspd = 0;
grv = .4;
VidaMonstro = 25;
distance = 500;
image_speed = 0.5;

state = InimigoStatee.IDLE;

enum InimigoStatee{
	IDLE,
	CHASE,
	ATKENEMIGO
}

time_dano = 0;
time_EntreDano = 50;

tempo_spawn = 0; 
intervalo_spawn = room_speed * 2; 
