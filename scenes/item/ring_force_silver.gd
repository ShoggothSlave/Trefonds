extends Node3D

func _prendre():
	if InventoryManager.ring_for_slv == false:
		InventoryManager.ring_for_slv = true
		Manager.iring11 = true
		Manager.iiring11 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Anneau de force en agrent".remove_from_group("prehensible")
		$"Anneau de force en agrent/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
