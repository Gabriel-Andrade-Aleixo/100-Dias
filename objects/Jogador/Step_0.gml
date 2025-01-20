#region Teclas
//teclas para movimento horizontal foram pressionadas (A ou seta para a esquerda)
Esq = keyboard_check(ord("A")) || keyboard_check(vk_left);

//teclas para pular foi pressionada (W ou barra de espaço ou seta para cima)
Cima = keyboard_check(ord("W")) || keyboard_check(vk_space) || keyboard_check(ord(vk_up)); 

//tecls para movimento para baixo foi pressionada (S ou seta para baixo)
Baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);

//teclas para movimento para a direita foram pressionadas (D ou seta para a direita)
Dir = keyboard_check(ord("D")) || keyboard_check(vk_right);

//tecla de reset foi pressionada (R)
Reset = keyboard_check(ord("R"));

//botão do mouse
MouseDir = mouse_check_button_pressed(mb_right);

// Se o Shift estiver pressionado, aumenta a velocidade de movimento
if keyboard_check(vk_shift) {
    spd = 10; // Velocidade maior ao correr
} else {
    spd = 5; // Velocidade normal
}

// Reseta a posição e as velocidades do jogador ao pressionar R
if (Reset) {
    game_restart();
}
#endregion

#region Movimento
// Calcula a direção do movimento horizontal com base nas teclas pressionadas
var move = Dir - Esq; // Dir (1) - Esq (-1) resulta em -1, 0 ou 1
hspd = move * spd; // Multiplica pela velocidade definida
vspd += grv; // Adiciona a gravidade à velocidade vertical

// Inverte a escala da imagem para refletir a direção do movimento
//if (keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left)) and image_xscale >= 0 {
//    image_xscale *= -1; // Espelha a imagem horizontalmente para a esquerda
//}
//if (keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)) and image_xscale <= 0 {
//    image_xscale *= -1; // Espelha a imagem horizontalmente para a direita
//}

if (hspd < 0) and image_xscale >= 0 {
    image_xscale *= -1; // Espelha a imagem horizontalmente para a esquerda
}
if (hspd > 0) and image_xscale <= 0 {
    image_xscale *= -1; // Espelha a imagem horizontalmente para a direita
}


// Colisão horizontal
if (place_meeting(x + hspd, y, Chao)) {
    // Ajusta a posição do jogador até a borda do objeto com o qual colidiu
    while (!place_meeting(x + sign(hspd), y, Chao)) {
        x += sign(hspd); // Move o jogador gradualmente
    }
    hspd = 0; // Zera a velocidade horizontal após a colisão
}
x += hspd; // Aplica o movimento horizontal

// Colisão vertical
if (place_meeting(x, y + vspd, Chao)) {
    // Ajusta a posição do jogador até a borda do objeto com o qual colidiu
    while (!place_meeting(x, y + sign(vspd), Chao)) {
        y += sign(vspd); // Move o jogador gradualmente
    }
    vspd = 0; // Zera a velocidade vertical após a colisão
}
y += vspd; // Aplica o movimento vertical

// Permite o jogador pular se estiver em contato com o chão e a tecla de pulo for pressionada
if place_meeting(x, y + 1, Chao) and Cima {
    vspd -= 10; // Define a força do pulo (movimento para cima)
}
#endregion

#region ATK1
// Define a posição inicial da flecha em relação ao jogador
var _xx = x + lengthdir_x(15, image_xscale > 0 ? 0 : 180); // Ajusta a posição com base na direção horizontal
var _yy = y - 10; // Ajuste vertical da posição inicial da flecha

// Verifica se o botão direito do mouse foi pressionado e se ainda há flechas disponíveis
if (MouseDir && global.flechas > 0) {
    // Cria uma flecha no layer "Tiros"
    var flecha = instance_create_layer(_xx, _yy, "Tiros", Obj_Flecha);

    // Ajusta as propriedades da flecha
    global.flechas--; // Diminui o número de flechas disponíveis
    flecha.speed = 10; // Define a velocidade da flecha
    flecha.direction = point_direction(x, y, mouse_x, mouse_y); // Define a direção em direção ao mouse
    flecha.image_angle = flecha.direction; // Define o ângulo da imagem para coincidir com a direção
}
#endregion

#region Vida
if (global.vida < 0) {
	game_restart();
}
#endregion