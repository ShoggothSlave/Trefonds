extends Node3D

func _prendre():
	if InventoryManager.ring_for_brz == false:
		InventoryManager.ring_for_brz = true
		Manager.iring10 = true
		Manager.iiring10 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Anneau de force en bronze".remove_from_group("prehensible")
		$"Anneau de force en bronze/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
