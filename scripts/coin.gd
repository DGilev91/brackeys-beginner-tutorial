extends Area2D

@onready var game_manger: Node = %GameManger

func _on_body_entered(_body: Node2D) -> void:
	game_manger.add_point()
	queue_free()
