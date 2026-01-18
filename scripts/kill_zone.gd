extends Area2D



func _on_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group("player"):
		playerGlobal.makeDead()
		await get_tree().create_timer(0.7).timeout
		get_tree().reload_current_scene()
