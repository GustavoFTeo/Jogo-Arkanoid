extends StaticBody2D

var hp #vida do bloco

func _ready():
	hp = 4

func _physics_process(delta):
	if hp == 3: $ImagemBloco.color = Color.YELLOW
	if hp == 2: $ImagemBloco.color = Color.DARK_ORANGE
	if hp == 1: $ImagemBloco.color = Color.RED
	if hp == 0: queue_free()
