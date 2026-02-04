extends Node3D

@export var speed: float = 2.0
@export var move_time: float = 2.0
@export var wait_time: float = 1.0

var direction: Vector3 = Vector3.ZERO

func _ready():
	randomize()
	_start_wandering()

func _start_wandering() -> void:
	while true:
		direction = Vector3(randf_range(-1, 1), 0, randf_range(-1, 1)).normalized()
		await get_tree().create_timer(move_time).timeout
		direction = Vector3.ZERO
		await get_tree().create_timer(wait_time).timeout

func _process(delta):
	translate(direction * speed * delta)
