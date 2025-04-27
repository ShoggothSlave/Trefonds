extends AnimationPlayer

func _process(_delta: float) -> void:
	if Manager.sleep == true:
		$".".play("sleep")
		$sleep_timer.start()

func _on_sleep_timer_timeout() -> void:
		Manager.Vie_Joueur = Manager.maxlife
