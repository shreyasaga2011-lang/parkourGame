extends Area2D
@onready var fade: CanvasLayer = $Fade


func _on_body_shape_entered(body_rid: RID, body: CharacterBody2D, body_shape_index: int, local_shape_index: int) -> void:
	transitionGlobal.doAnimFunc()
	get_tree().paused = true
	await get_tree().create_timer(0.7).timeout
	if body.is_in_group("player"):
		if changeLevelGlobal.currentLevel == 1:
			get_tree().paused = false
			changeLevelGlobal.finishLevelOne()
		if changeLevelGlobal.currentLevel == 2:
			get_tree().paused = false
			changeLevelGlobal.finishLevelTwo()
		if changeLevelGlobal.currentLevel == 3:
			get_tree().paused = false
			changeLevelGlobal.finishLevelThree()
		if changeLevelGlobal.currentLevel == 4:
			get_tree().paused = false
			changeLevelGlobal.finishLevelFour()
		if changeLevelGlobal.currentLevel == 5:
			get_tree().paused = false
			changeLevelGlobal.finishLevelFive()
		get_tree().change_scene_to_file("res://Scenes/change_level.tscn")
	
