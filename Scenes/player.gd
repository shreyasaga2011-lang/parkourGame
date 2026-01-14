extends CharacterBody2D

const SPEED = 250.0
const JUMP_VELOCITY = -400.0

var direction := 1
var jumps := 0
const MAX_JUMPS := 2

func _physics_process(delta: float) -> void:
	# Gravity
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		jumps = 0

	velocity.x = SPEED * direction

	# Wall bounce
	if is_on_wall():
		direction *= -1
		velocity.x = SPEED * direction
		position.x += direction * 2 # small separation push

	# Jump
	if Input.is_action_just_pressed("jump") and jumps < MAX_JUMPS:
		velocity.y = JUMP_VELOCITY
		jumps += 1

	move_and_slide()
