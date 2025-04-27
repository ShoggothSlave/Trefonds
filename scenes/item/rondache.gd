extends Node3D

func _prendre():
	if Manager.rondache == false:
		Manager.rondache = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$Rondache.remove_from_group("prehensible")
		$Rondache/body_collision2.remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
