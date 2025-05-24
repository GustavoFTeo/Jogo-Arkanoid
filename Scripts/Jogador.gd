extends CharacterBody2D

var tempo = 0

#movimento
func _physics_process(delta):
	var eixo = Input.get_axis("Jogado_esquerda", "Jogador_direita")
	var forca = 500
	var direcao = Vector2(eixo, 0)
	
#cronometro
	tempo = tempo + delta
	$"../Cronometro".text = str(int(tempo)) + "seg"

	velocity = direcao * forca
	move_and_slide()
