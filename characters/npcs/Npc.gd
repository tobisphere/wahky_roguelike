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
		# Pick random direction
		direction = Vector3(
			randf_range(-1, 1),
			0,
			randf_range(-1, 1)
		).normalized()

		# Move for a while
		await get_tree().create_timer(move_time).timeout

		# Stop moving
		direction = Vector3.ZERO

		# Wait before moving again
		await get_tree().create_timer(wait_time).timeout

func _process(delta):
	# Move NPC
	translate(direction * speed * delta)
