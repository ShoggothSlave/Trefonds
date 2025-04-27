extends Node3D

func _prendre():
	if InventoryManager.ring_oxy_gld == false:
		InventoryManager.ring_oxy_gld = true
		Manager.iring3 = true
		Manager.iiring3 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Anneau de respiration en or".remove_from_group("prehensible")
		$"Anneau de respiration en or/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
