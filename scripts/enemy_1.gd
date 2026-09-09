extends CharacterBody2D

@export var bullet: PackedScene
@onready var bullet_location: Node2D = $"Bullet Location"
@onready var shoot_timer: Timer = $"Shoot Timer"



func _ready() -> void:
	shoot_timer.wait_time = 1.5
	shoot_timer.start()

func _on_shoot_timer_timeout() -> void:
	_shot_a_bullet()

func _shot_a_bullet() -> void:
	var new_bullet = bullet.instantiate()
	new_bullet.global_position = bullet_location.global_position
	get_tree().current_scene.add_child(new_bullet)
