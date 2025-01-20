spd_aum = 0.05; // Incremento de velocidade horizontal por step
spd += spd_aum;

vspd += grv;

// Atualiza a posição da flecha com base na velocidade e direção
x += lengthdir_x(spd, direction); // Movimento horizontal
y += vspd; // Movimento vertical (gravidade)

// Verifica colisão com o objeto Chao
if (place_meeting(x, y, Chao)) {
    instance_destroy(); // Destrói a flecha ao colidir com o chão
}