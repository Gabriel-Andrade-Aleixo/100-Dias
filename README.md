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
