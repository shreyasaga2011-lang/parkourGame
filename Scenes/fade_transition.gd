extends CanvasLayer
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var fade: CanvasLayer = $"."

func _ready() -> void:
	fade.layer = -3
	transitionGlobal.doAnim = false 

func _physics_process(delta: float) -> void:
	if transitionGlobal.doAnim == false:
		fade.layer = -3
	if transitionGlobal.doAnim == true:
		animation_player.play("new_animation")
		fade.layer = 2
