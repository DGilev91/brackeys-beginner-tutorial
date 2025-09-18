extends Node2D

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


const SPEED: int = 60
var direction: int = 1

func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
	elif ray_cast_left.is_colliding():
		direction = 1
		
	animated_sprite_2d.flip_h = false if direction > 0 else true
		
	position.x += direction * SPEED * delta
