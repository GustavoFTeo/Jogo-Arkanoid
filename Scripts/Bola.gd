extends CharacterBody2D

var forca
var direcao
#movimento
func _ready():
	forca = 400
	direcao = Vector2(1, 1)

func _physics_process(delta):
	if get_slide_collision_count() > 0:
		var colisao = get_slide_collision(0)

#efeito de quicar
		direcao = direcao.bounce(colisao.get_normal())

#aumentar velocidade
		if colisao.get_collider().name == "Jogador":
			forca = forca + (forca * 3/100)

#Regenerar bolinha
		if colisao.get_collider().name == "Base":
			position = Vector2(0, 0)
			forca = 400 

#Blocos
		if colisao.get_collider().is_in_group("Blocos"):
			colisao.get_collider().hp -= 1

	velocity = forca * direcao
	move_and_slide()
