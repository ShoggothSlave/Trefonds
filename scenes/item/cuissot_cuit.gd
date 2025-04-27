extends Node3D

func _prendre():
	if InventoryManager.fried_meat < 20:
		$audio_pick.play()
		$Timer.start()
		InventoryManager.fried_meat = InventoryManager.fried_meat + 1
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Morceau de viande roti".remove_from_group("prehensible")
		$"Morceau de viande roti/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
