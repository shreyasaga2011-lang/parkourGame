extends CharacterBody2D
@onready var animation_player: AnimationPlayer = $Sprite2D2/AnimationPlayer

const SPEED = 250.0
var JUMP_VELOCITY = -350.0

var direction := 1
var jumps := 0
var MAX_JUMPS := 2
var counter = 0
func _physics_process(delta: float) -> void:
	# Gravity
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		jumps = 0

	velocity.x = SPEED * direction
	
	if playerGlobal.JumpPadBool == true:
		JUMP_VELOCITY = -1000
		MAX_JUMPS = 1
	if playerGlobal.JumpPadBool == false:
		JUMP_VELOCITY = -350
	if playerGlobal.JumpOrbBool == true:
		jumps = 1
	if is_on_wall():
		direction *= -1
		velocity.x = SPEED * direction
	if playerGlobal.JumpOrbBool == false:
		counter = 0
	
	if Input.is_action_just_pressed("jump") and jumps < MAX_JUMPS:
		velocity.y = JUMP_VELOCITY
		jumps += 1
		if playerGlobal.JumpOrbBool == true:
			counter += 1
			if counter == 1:
				animation_player.play("new_animation")

	move_and_slide()
