extends Node3D

func _prendre():
	if InventoryManager.am_for_gld == false:
		InventoryManager.am_for_gld = true
		Manager.amu3 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Amulette de force en or".remove_from_group("prehensible")
		$"Amulette de force en or/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
