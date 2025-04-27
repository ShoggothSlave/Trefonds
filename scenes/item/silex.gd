extends Node3D

func _prendre():
	if InventoryManager.flint< 2:
		$audio_pick.play()
		$Timer.start()
		InventoryManager.flint += 1
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Morceau de silex".remove_from_group("prehensible")
		$"Morceau de silex/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
