extends Node3D

func _prendre():
	if InventoryManager.ring_arm_gld == false:
		InventoryManager.ring_arm_gld = true
		Manager.iring9 = true
		Manager.iiring9 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Anneau d'armure en or".remove_from_group("prehensible")
		$"Anneau d'armure en or/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
