extends Node3D

func _prendre():
	if InventoryManager.gourde < 6:
		$audio_pick.play()
		$Timer.start()
		InventoryManager.gourde = InventoryManager.gourde + 1
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$Gourde.remove_from_group("prehensible")
		$Gourde/body_collision2.remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
