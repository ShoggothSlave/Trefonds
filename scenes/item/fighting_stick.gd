extends Node3D

func _prendre():
	if Manager.stick == false:
		Manager.stick = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Bâton de combat".remove_from_group("prehensible")
		$"Bâton de combat/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
