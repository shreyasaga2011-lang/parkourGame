extends Node2D



func _process(delta: float) -> void:
	if playerGlobal.alive == false:
		await get_tree().create_timer(1.5).timeout
		get_tree().change_scene_to_file("res://Scenes/game_scene.tscn")
		playerGlobal.makeAlive()
