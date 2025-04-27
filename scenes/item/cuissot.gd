extends Node3D

func _prendre():
	if InventoryManager.raw_meat < 15:
		$audio_pick.play()
		$Timer.start()
		InventoryManager.raw_meat = InventoryManager.raw_meat + 1
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Morceau de viande".remove_from_group("prehensible")
		$"Morceau de viande/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
