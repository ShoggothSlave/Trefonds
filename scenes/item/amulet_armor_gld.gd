extends Node3D

func _prendre():
	if InventoryManager.am_arm_gld == false:
		InventoryManager.am_arm_gld = true
		Manager.amu12 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Amulette d'armure en or".remove_from_group("prehensible")
		$"Amulette d'armure en or/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
