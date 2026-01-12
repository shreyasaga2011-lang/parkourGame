extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var crazyDirection = true
#true = right false = left



func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	if is_on_wall():
		if crazyDirection == true:
			crazyDirection = false
		else:
			crazyDirection = true



	if Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_VELOCITY
		if crazyDirection == true:
			crazyDirection = false
		else:
			crazyDirection = true


	if crazyDirection == true:
		position.x += 4
	if crazyDirection == false:
		position.x -= 4

	move_and_slide()
