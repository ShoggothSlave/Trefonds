extends Node3D

func _prendre():
	if InventoryManager.am_arm_brz == false:
		InventoryManager.am_arm_brz = true
		Manager.amu10 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Amulette d'armure en bronze".remove_from_group("prehensible")
		$"Amulette d'armure en bronze/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
