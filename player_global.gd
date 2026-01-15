extends Node

var alive = true

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func makeDead():
	get_tree().change_scene("res://node_2d.tscn")

func makeAlive():
	var alive = true
	
	

var JumpPadBool = false

func activateJumpPad():
	JumpPadBool = true
	await get_tree().create_timer(0.5).timeout
	JumpPadBool = false
