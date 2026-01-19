extends Control

func _ready():
	# This is the critical fix - allows this node to process when paused
	process_mode = Node.PROCESS_MODE_ALWAYS
	
	$AnimationPlayer.play("RESET")
	hide()

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("new_animation")
	await $AnimationPlayer.animation_finished
	hide()

func pause():
	get_tree().paused = true
	show()
	$AnimationPlayer.play("new_animation")

func _input(event: InputEvent):
	if event.is_action_pressed("esc"):
		if get_tree().paused:
			resume()
		else:
			pause()

func _on_resume_pressed():
	resume()

func _on_quit_pressed():
	get_tree().quit()

func _on_restart_pressed():
	resume()
	get_tree().reload_current_scene()
