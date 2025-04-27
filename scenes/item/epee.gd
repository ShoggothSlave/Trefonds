extends Node3D

func _prendre():
	if Manager.sword == false:
		Manager.sword = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Épée rouillée".remove_from_group("prehensible")
		$"Épée rouillée/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
