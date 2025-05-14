extends Node3D

func _prendre():
	Manager.silverkey = true
	$AudioStreamPlayer.play()
	$Timer.start()

func _on_timer_timeout() -> void:
	queue_free()
