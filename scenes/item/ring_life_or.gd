extends Node3D

func _prendre():
	if InventoryManager.ring_vie_gld == false:
		InventoryManager.ring_vie_gld = true
		Manager.iring15 = true
		Manager.iiring15 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Anneau de vie en or".remove_from_group("prehensible")
		$"Anneau de vie en or/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
