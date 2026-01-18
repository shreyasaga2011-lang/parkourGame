extends Node



func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass
var doAnim = false

var alive = true

func makeDead():
	alive = false
	await get_tree().create_timer(0.001).timeout
	alive = true
	doAnim = true
	await get_tree().create_timer(0.7).timeout
	doAnim = false



func makeAlive():
	var alive = true


var JumpPadBool = false

func activateJumpPad():
	JumpPadBool = true
	await get_tree().create_timer(0.5).timeout
	JumpPadBool = false

var JumpOrbBool = false
var JumpOrbBoolReverse = false

func JumpOrbActivateReverse():
	JumpOrbBoolReverse = true

func JumpOrbDeactivateReverse():
	JumpOrbBoolReverse = false

func JumpOrbActivate():
	JumpOrbBool = true

func JumpOrbDeactivate():
	JumpOrbBool = false

var makeReverseGlobal = 1

func makeReverse():
	makeReverseGlobal *= -1
