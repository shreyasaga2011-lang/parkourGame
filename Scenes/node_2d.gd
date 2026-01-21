extends Node2D



func _on_lvl_1_pressed() -> void:
	transitionGlobal.doAnimFunc()
	changeLevelGlobal.changeCurrentLevelToOne()
	await get_tree().create_timer(0.7).timeout
	get_tree().change_scene_to_file("res://Scenes/level_one.tscn")


func _on_lvl_2_pressed() -> void:
	transitionGlobal.doAnimFunc()
	changeLevelGlobal.changeCurrentLevelToTwo()
	get_tree().change_scene_to_file("res://Scenes/level_two.tscn")


func _on_lvl_3_pressed() -> void:
	transitionGlobal.doAnimFunc()
	changeLevelGlobal.changeCurrentLevelToThree()
	get_tree().change_scene_to_file("res://Scenes/level_three.tscn")



func _on_lvl_4_pressed() -> void:
	transitionGlobal.doAnimFunc()
	changeLevelGlobal.changeCurrentLevelToFour()
	get_tree().change_scene_to_file("res://Scenes/level_four.tscn")



func _on_lvl_5_pressed() -> void:
	transitionGlobal.doAnimFunc()
	changeLevelGlobal.changeCurrentLevelToThree()
	get_tree().change_scene_to_file("res://Scenes/level_five.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
