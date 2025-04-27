extends Node3D

func _prendre():
	if InventoryManager.am_oxy_slv == false:
		InventoryManager.am_oxy_slv = true
		Manager.amu5 = true 
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Amulette de respiration en argent".remove_from_group("prehensible")
		$"Amulette de respiration en argent/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
