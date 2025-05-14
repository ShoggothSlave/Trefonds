extends Node3D

func _prendre():
	Manager.bronzekey = true
	$AudioStreamPlayer.play()
	$Timer.start()

func _on_timer_timeout() -> void:
	queue_free()
