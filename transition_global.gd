extends Node

var doAnim = false

func doAnimFunc():
	doAnim = true
	await get_tree().create_timer(0.001).timeout
	doAnim = false
