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

Hoje Criei a função de atirar flechas, ao clicar o botão direito do mause, ainda não está mudando o ângulo da flecha ao cair, futuramente adicionarei.

## Dia 004/100

Hoje o dia foi mais tranquilo pois apenas fiquei fazendo a pixel art de como seria, decidi me basear em celeste.
<br/>
Fiz apenas a arte do personagem inicial, atualmente está sem animações.

## Dia 005/100

Neste dia fiz um pequeno sistema de vida, o jogador tem um total de 12 de vida, quando ela zera o jogo é reiniciado, talvez eu possa fazer um sistema de salvar futuramente.
<br/>
Também fiz uma barra de vida simples, talvez eu mude ela alguma hora.

<img src="/sprites/SPR_Vida/e94a6cf7-68ba-4570-9056-3d1379f96693.png" alt="Pixel_art_Slime">


## Dia 006/100

Hoje fiz basicamente a animação do personagem caminhando e parado, por mais que não tenha ficado grande coisa.
<br/>
A proxima sera de atk e as sprites dos monstros e depois fazer o cenario.

## Dia 007/100

Hoje fiz muitas coisas, coloquei a animação para o personagem ficar parado e andando, porém está com um problema que ao andar para a direita a animação roda ao contrario.
<br/>
Comecei a fazer os inimigos e o cenário.
<br/>
Talvez amanhã eu foque no cenário.
<br/>
<img src="/sprites/Ocioso/2a764833-a709-4707-8808-4f5b9550a7f1.png" alt="Jogador parado 1 frame" width="50">

## Dia 008/100

Neste dia foquei apenas nas sprites, troquei a flecha por uma bola de energia e fiz o cenário inicial, sendo uma simples floresta.

## Dia 009/100

Fiz a movimentação do inimigo aso se aproximar e fiz a pixel art do primeiro inimigo, que é um slime.

<img src="\Aseprite\Inimigos\Slime\Ocioso\Slime.gif" alt="Pixel_art_Slime" width="200">

## Dia 010/100

Hoje não fiz quase nada, fiz apenas uma troca de sprite que ainda vou criar para os inimigos, preciso fazer eles darem dano.

## Dia 011/100

Fiz as sprites do slime atacando e andando.

<img src="Aseprite/Inimigos/Slime/ATK/SlimeATK.gif" alt="Pixel_art_Slime" width="200"> <img src="Aseprite/Inimigos/Slime/Andando/SlimeMove.gif" alt="Pixel_art_Slime" width="200">

## Dia 012/100

Hoje consegui implementar o dano do inimigo ao atacar, porém está com um dano muito inconsistente.

## Dia 013/100

Fiz um item de vida para se curar e mudei a vida do inimigo, agora são necessários 2 rits para matar ele.

<img src="Aseprite/Pegaveis/Vida/x1/Vida1.gif" width="200">
