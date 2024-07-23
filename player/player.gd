extends CharacterBody2D

@export var move_speed: float = 100

func _physics_process(_delta):
	var x_direction = Input.get_action_strength("Right") - Input.get_action_strength("Left")

	velocity.x = x_direction * move_speed
	
	move_and_slide()
