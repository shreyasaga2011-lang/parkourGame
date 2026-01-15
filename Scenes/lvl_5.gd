extends Button


func _ready():
	visible = false
	var style := StyleBoxFlat.new()
	style.bg_color = Color(0, 0, 0, 0)
	style.border_width_left = 0
	style.border_width_right = 0
	style.border_width_top = 0
	style.border_width_bottom = 0
	for s in ["normal", "hover", "pressed", "focus", "disabled"]:
		add_theme_stylebox_override(s, style)
func _physics_process(delta: float) -> void:
	if changeLevelGlobal.levelOneComplete == true:
		visible = true

func _on_pressed() -> void:
	changeLevelGlobal.changeCurrentLevelToFive()
	get_tree().change_scene_to_file("res://Scenes/level_one.tscn")
