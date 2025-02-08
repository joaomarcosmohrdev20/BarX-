extends CharacterBody2D

var vect = Vector2()
var player_WalkSpeed = 5

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Moviment(delta)
	
func Moviment(delta):
	vect = Vector2()
	
	if Input.is_action_pressed("move_right"):
		global_position.x += 1 * player_WalkSpeed
		print("Você andou para a direita.")
		
	if Input.is_action_pressed("move_left"):
		global_position.x -= 1 * player_WalkSpeed
		print("Você andou para a esquerda.")
		
	if Input.is_action_pressed("move_up"): 
		global_position.y -= 1 * player_WalkSpeed
	
	if Input.is_action_pressed("move_down"):
		global_position.y += 1 * player_WalkSpeed
	
	vect = vect.normalized() * player_WalkSpeed
	
	move_and_slide()
