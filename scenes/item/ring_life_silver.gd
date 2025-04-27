extends Node3D

func _prendre():
	if InventoryManager.ring_vie_slv == false:
		InventoryManager.ring_vie_slv = true
		Manager.iring14 = true
		Manager.iiring14 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Anneau de vie en argent".remove_from_group("prehensible")
		$"Anneau de vie en argent/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
