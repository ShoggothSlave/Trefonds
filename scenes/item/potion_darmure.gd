extends Node3D

func _prendre():
	if InventoryManager.po_armor < 100:
		$audio_pick.play()
		$Timer.start()
		InventoryManager.po_armor += 1
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Potion d'armure".remove_from_group("prehensible")
		$"Potion d'armure/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
