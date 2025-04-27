extends Node3D

func _prendre():
	if InventoryManager.ring_oxy_brz == false:
		InventoryManager.ring_oxy_brz = true
		Manager.iring1 = true
		Manager.iiring1 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Anneau de respiration en bronze".remove_from_group("prehensible")
		$"Anneau de respiration en bronze/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
