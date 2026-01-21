extends Button

func _on_pressed() -> void:
	var pause_menu = get_tree().root.find_child("PauseMenu", true, false)
	if pause_menu:
		if get_tree().paused:
			pause_menu.resume()
		else:
			pause_menu.pause()
