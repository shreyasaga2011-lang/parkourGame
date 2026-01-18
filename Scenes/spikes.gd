extends Area2D
@onready var jump_pad_particles: CPUParticles2D = $JumpPadParticles

func _on_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group("player"):
		playerGlobal.makeDead()
		jump_pad_particles.emitting = true
		await get_tree().create_timer(0.7).timeout
		get_tree().call_deferred("reload_current_scene")
