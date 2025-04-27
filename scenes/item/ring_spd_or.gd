extends Node3D

func _prendre():
	if InventoryManager.ring_spd_gld == false:
		InventoryManager.ring_spd_gld = true
		Manager.iring6 = true
		Manager.iiring6 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Anneau de vitesse en or".remove_from_group("prehensible")
		$"Anneau de vitesse en or/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
