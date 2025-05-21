extends Node3D

func _lire():
	QuetesManager.quest_araceae = true
	$AudioStreamPlayer.play()
	$CanvasLayer.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("PageSuivante") and $CanvasLayer.visible == true:
		$CanvasLayer.hide()
		$AudioStreamPlayer.play()
		$Timer.start()
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _on_timer_timeout() -> void:
	queue_free()
