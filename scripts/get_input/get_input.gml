function get_input(){

	//teclas para movimento horizontal foram pressionadas (A ou seta para a esquerda)
	Esq = keyboard_check(ord("A")) || keyboard_check(vk_left);

	//teclas para pular foi pressionada (W ou barra de espaço ou seta para cima)
	Cima = keyboard_check(ord("W")) || keyboard_check(vk_space) || keyboard_check(vk_up); 

	//tecls para movimento para baixo foi pressionada (S ou seta para baixo)
	Baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);

	//teclas para movimento para a direita foram pressionadas (D ou seta para a direita)
	Dir = keyboard_check(ord("D")) || keyboard_check(vk_right);

	//tecla de reset foi pressionada (R)
	Reset = keyboard_check(ord("R"));

	//botão do mouse
	MouseDir = mouse_check_button_pressed(mb_right);

}