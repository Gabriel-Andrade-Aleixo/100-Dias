# 100-Dias

## Dia 001/100

 Passei grande parte do tempo decidindo a linguagem a ser usada, pensei em usar C# ou Java, mas no fim acabei usando GML.
 <br/>
 Neste primeiro dia criei apenas coisas simples para iniciar meus estudos na linguagem, criando a movimentação e alguns sprites para o jogo.

## Dia 002/100

 Hoje o dia não foi tão produtivo pois passei muito tempo tentando arrumar um problema no personagem, onde ao andar ele ficava achatado e não conseguia pular.
 <br/><br/>
 Para corrigir este erro fiz o seguinte:
```GML
if (keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left)) and image_xscale>=0{
	image_xscale *= -1;
}
if (keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)) and image_xscale<=0{
	image_xscale *= -1;
}
```
 Ao andar ele verifica se está negativo ou positivo a escala x da sprite, dependendo do resultado ele vira para o lado que está andando. Entretanto, ao fazer isso existe o erro que se vc clicar para andar para o outro lado sem soltar a tecla, ele irá virar, e se soltar ele continuará virado para o lado errado.

## Dia 003/100

Hoje Criei a função de atirar flechas, ao clicar o botão direito do mause, ainda não está mudando o ângulo da flecha ao cair, futuramente adicionarei

## Dia 004/100

Hoje o dia foi mais tranquilo pois apenas fiquei fazendo a pixel art de como seria, decidi me basear em celeste
<br/>
Fiz apenas a arte do personagem inicial, atualmente está sem animações

## Dia 005/100

Neste dia fiz um pequeno sistema de vida, o jogador tem um total de 12 de vida, quando ela zera o jogo é reiniciado, talvez eu possa fazer um sistema de salvar futuramente.
<br/>
Também fiz uma barra de vida simples, talvez eu mude ela alguma hora.

## Dia 006/100

Hoje fiz basicamente a animação do personagem caminhando e parado, por mais que não tenha ficado grande coisa.
<br/>
A proxima sera de atk e as sprites dos monstros e depois fazer o cenario.
