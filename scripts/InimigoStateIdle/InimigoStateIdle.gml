function InimigoStateIdle(){
	script_execute(get_input);

	#region Movimento
	vspd += grv; // Adiciona a gravidade à velocidade vertical

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
	#endregion

	if distance_to_object(Jogador) < distance {
	state = InimigoState.CHASE;
	sprite_index = Enemigo;
	}
}