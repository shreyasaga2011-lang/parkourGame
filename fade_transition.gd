extends CanvasLayer

@onready var anim: AnimationPlayer = $AnimationPlayer

var is_fading := false

func fade_out() -> void:
	if is_fading:
		return
	is_fading = true
	anim.play("fade_out")
	await anim.animation_finished
	is_fading = false

func fade_in() -> void:
	if is_fading:
		return
	is_fading = true
	anim.play("fade_in")
	await anim.animation_finished
	is_fading = false

func fade_to_scene(scene_path: String) -> void:
	await fade_out()
	get_tree().change_scene_to_file(scene_path)
	await get_tree().process_frame
	await fade_in()
