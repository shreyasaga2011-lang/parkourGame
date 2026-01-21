extends CanvasLayer
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _process(delta: float) -> void:
	if transitionGlobal.doAnim == true:
		print("asdasdasd")
		animation_player.play("new_animation")
		await get_tree().create_timer(0.92).timeout
