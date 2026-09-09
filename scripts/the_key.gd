extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		change_to_next_level()


func change_to_next_level():
	print("ok goining to the next level")
