extends Sprite2D
var speed = 400
var angular_speed = PI
var puntos = 0

func _ready() -> void:
	print("Jugador preparado")
	

func _process(delta: float) -> void:
	rotation += angular_speed * delta 
	
	var velocity = Vector2.UP.rotated(rotation) * speed
	
	position += velocity * delta
	
func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("jump"):
		sumar_punto()

func sumar_punto() -> void: # función
	puntos += 1
	if puntos >= 5: # decisión
		print("Objetivo alcanzado")
