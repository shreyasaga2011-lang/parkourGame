extends Node2D
@onready var audio_stream_player_2: AudioStreamPlayer = $AudioStreamPlayer2



func _on_lvl_1_mouse_entered() -> void:
	audio_stream_player_2.play()

func _on_lvl_2_mouse_entered() -> void:
	audio_stream_player_2.play()


func _on_lvl_3_mouse_entered() -> void:
	audio_stream_player_2.play()


func _on_lvl_4_mouse_entered() -> void:
	audio_stream_player_2.play()


func _on_lvl_5_mouse_entered() -> void:
	audio_stream_player_2.play()


func _on_quit_mouse_entered() -> void:
	audio_stream_player_2.play()
