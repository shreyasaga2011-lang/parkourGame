extends Control

func _ready():
	# ALWAYS process - works both paused and unpaused
	process_mode = Node.PROCESS_MODE_ALWAYS
	
	# Make sure ColorRect doesn't block mouse input
	$ColorRect.mouse_filter = Control.MOUSE_FILTER_IGNORE
	
	$AnimationPlayer.play("RESET")
	hide()

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("new_animation")
	await $AnimationPlayer.animation_finished
	hide()

func pause():
	print("Game paused!")
	get_tree().paused = true
	show()
	$AnimationPlayer.play("new_animation")

func _input(event: InputEvent):
	if event.is_action_pressed("esc"):
		print("ESC pressed! Paused state: ", get_tree().paused)
		if get_tree().paused:
			resume()
		else:
			pause()

func _on_resume_pressed()-> void:
	print("Resume button pressed!")
	resume()

func _on_quit_pressed()-> void:
	print("Quit button pressed!")
	get_tree().quit()

func _on_restart_pressed()-> void:
	print("Restart button pressed!")
	resume()
	get_tree().reload_current_scene()

func _on_levels_menu_pressed() -> void:
	print("Levels menu pressed!")
	get_tree().change_scene_to_file("res://Scenes/change_level.tscn")
