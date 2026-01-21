extends Node2D
@onready var fade: CanvasLayer = $Fade
@onready var audio_stream_player: AudioStreamPlayer = $"../AudioStreamPlayer"

func _on_lvl_1_pressed()-> void:
	transitionGlobal.doAnimFunc()
	audio_stream_player.play()
	changeLevelGlobal.changeCurrentLevelToOne()
	await get_tree().create_timer(0.7).timeout
	get_tree().change_scene_to_file("res://Scenes/level_one.tscn")
	
func _on_lvl_2_pressed() -> void:
	audio_stream_player.play()
	transitionGlobal.doAnimFunc()
	changeLevelGlobal.changeCurrentLevelToTwo()
	await get_tree().create_timer(0.7).timeout
	get_tree().change_scene_to_file("res://Scenes/level_two.tscn")

	
func _on_lvl_3_pressed() -> void:
	audio_stream_player.play()
	transitionGlobal.doAnimFunc()
	changeLevelGlobal.changeCurrentLevelToThree()
	await get_tree().create_timer(0.7).timeout
	get_tree().change_scene_to_file("res://Scenes/level_three.tscn")
	
	
func _on_lvl_4_pressed() -> void:
	audio_stream_player.play()
	transitionGlobal.doAnimFunc()
	changeLevelGlobal.changeCurrentLevelToFour()
	await get_tree().create_timer(0.7).timeout
	get_tree().change_scene_to_file("res://Scenes/level_four.tscn")
	
	
func _on_lvl_5_pressed() -> void:
	audio_stream_player.play()
	transitionGlobal.doAnimFunc()
	await get_tree().create_timer(0.7).timeout
	get_tree().change_scene_to_file("res://Scenes/level_five.tscn")
	
	
func _on_quit_pressed() -> void:
	print("this button is working")
	get_tree().quit()
