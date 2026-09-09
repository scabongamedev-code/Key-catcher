extends Area2D


var bullet_speed : float = -300


func _process(delta: float) -> void:
	position += transform.x * bullet_speed * delta
