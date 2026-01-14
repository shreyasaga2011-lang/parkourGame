extends Area2D


func _on_body_shape_entered(body_rid: RID, body: CharacterBody2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("player"):
		if changeLevelGlobal.currentLevel == 1:
			changeLevelGlobal.finishLevelOne()
		if changeLevelGlobal.currentLevel == 2:
			changeLevelGlobal.finishLevelTwo()
		if changeLevelGlobal.currentLevel == 3:
			changeLevelGlobal.finishLevelThree()
		if changeLevelGlobal.currentLevel == 4:
			changeLevelGlobal.finishLevelFour()
		if changeLevelGlobal.currentLevel == 5:
			changeLevelGlobal.finishLevelFive()
		get_tree().change_scene_to_file("res://Scenes/change_level.tscn")
	
