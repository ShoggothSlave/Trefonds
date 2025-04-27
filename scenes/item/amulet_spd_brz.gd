extends Node3D

func _prendre():
	if InventoryManager.am_spd_brz == false:
		InventoryManager.am_spd_brz = true
		Manager.amu7 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Amulette de vitesse en bronze".remove_from_group("prehensible")
		$"Amulette de vitesse en bronze/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
