extends Area2D
@export var speed = 240.0
var angular_speed = PI
signal interact_requested 

func _process(delta: float) -> void:
	var direction_h := Input.get_axis("move_left", "move_right")
	position.x += direction_h * speed * delta
	var direction_v := Input.get_axis("move_up", "move_down")
	position.y += direction_v * speed * delta

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		interact_requested.emit()
