extends Node
var doAnim = false

func doAnimFunc():
	doAnim = true
	await get_tree().create_timer(0.7).timeout
	doAnim = false
