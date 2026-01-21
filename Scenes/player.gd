extends CharacterBody2D
@onready var animation_player: AnimationPlayer = $Sprite2D2/AnimationPlayer
@onready var jump_orb_particles: CPUParticles2D = $JumpOrbParticles
@onready var jump_orb_particles_reverse: CPUParticles2D = $JumpOrbParticlesReverse
@onready var sfx_ski: AudioStreamPlayer2D = $SFXSki
@onready var jump_affect: AudioStreamPlayer2D = $JumpAffect
@onready var explosion: AudioStreamPlayer2D = $Explosion
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer
@onready var audio_stream_player_2: AudioStreamPlayer = $AudioStreamPlayer2

const SPEED = 250.0
var JUMP_VELOCITY = -350.0
var ski_tween: Tween
var direction := 1
var jumps := 0
var MAX_JUMPS := 2
var counter = 0
@onready var trail_left: CPUParticles2D = $TrailLeft
@onready var trail_right: CPUParticles2D = $TrailRight
@onready var jump_pad_particles: CPUParticles2D = $JumpPadParticles
var playingSki = false
var was_on_floor := false

func _physics_process(delta: float) -> void:
	var on_floor := is_on_floor()
	if on_floor and not sfx_ski.playing:
		sfx_ski.volume_db = -24
		sfx_ski.play()
		if ski_tween:
			ski_tween.kill()
		ski_tween = get_tree().create_tween()
		ski_tween.tween_property(sfx_ski, "volume_db", 0, 0.25)
	
	# STOP (short fade then STOP) - only trigger on the transition frame
	elif not on_floor and was_on_floor and sfx_ski.playing:
		if ski_tween:
			ski_tween.kill()
		ski_tween = get_tree().create_tween()
		ski_tween.tween_property(sfx_ski, "volume_db", -24, 0.25)
		ski_tween.tween_callback(func():
			sfx_ski.stop()
			sfx_ski.volume_db = 0 
		)
	
	was_on_floor = on_floor


	if on_floor and not was_on_floor:
		sfx_ski.play()
	if is_on_floor():
		playingSki = true
	if is_on_floor() and abs(velocity.x) > 50:
		trail_left.emitting = velocity.x > 0
		trail_right.emitting = velocity.x < 0
	else:
		trail_left.emitting = false
		trail_right.emitting = false
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		jumps = 0
	

	velocity.x = SPEED * playerGlobal.makeReverseGlobal
	
	if playerGlobal.JumpPadBool == true:
		JUMP_VELOCITY = -1000
		MAX_JUMPS = 2
	if playerGlobal.JumpPadBool == false:
		JUMP_VELOCITY = -350
	if playerGlobal.JumpOrbBool == true:
		jumps = 1
		
	if is_on_wall():
		playerGlobal.makeReverse()
		velocity.x = SPEED * playerGlobal.makeReverseGlobal
	if playerGlobal.JumpOrbBool == false:
		counter = 0


	
	if Input.is_action_just_pressed("jump") and jumps < MAX_JUMPS:
		jump_affect.play()
		velocity.y = JUMP_VELOCITY
		jumps += 1
		if playerGlobal.JumpPadBool:
			jump_pad_particles.restart()
			jump_pad_particles.emitting = true
			explosion.play()
		if playerGlobal.JumpOrbBool and !playerGlobal.JumpOrbBoolReverse:
			jump_orb_particles.restart()
			jump_orb_particles.emitting = true
			audio_stream_player_2.play()
		if playerGlobal.JumpOrbBool and playerGlobal.JumpOrbBoolReverse:
			jump_orb_particles_reverse.restart()
			jump_orb_particles_reverse.emitting = true
			playerGlobal.makeReverse()
			audio_stream_player.play()
		
	
	move_and_slide()
