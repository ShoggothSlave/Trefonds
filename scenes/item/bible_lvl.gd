extends Node3D

func _lire():
	$AudioStreamPlayer.play()
	$CanvasLayer.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("PageSuivante") and $CanvasLayer.visible == true:
		$CanvasLayer.hide()
		$AudioStreamPlayer.play()
		$Timer.start()
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		Manager.lvl = Manager.lvl +1
		Manager.maxlife = Manager.maxlife +5
		Manager.maxxp = Manager.maxxp + Manager.maxxp / 4.0
		Manager.force += 0.1
		Manager.armure += 0.1

func _on_timer_timeout() -> void:
	queue_free()
