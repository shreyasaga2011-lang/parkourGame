extends CPUParticles2D



func _process(delta: float) -> void:
	if playerGlobal.makeReverseGlobal == 1:
		visible = false
	if playerGlobal.makeReverseGlobal == -1:
		visible = true
