extends Node2D
class_name movementComponent

@export var movespeed: float
@export var direction: Vector2
var entity: CharacterBody2D
func _ready() -> void:
	entity =get_parent()

func calcMovement():
	entity.velocity=movespeed*direction
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	calcMovement()
	entity.move_and_slide()
