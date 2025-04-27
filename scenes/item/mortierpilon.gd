extends Node3D

func _prendre():
	if InventoryManager.mortier == false:
		$audio_pick.play()
		$Timer.start()
		InventoryManager.mortier = true
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Mortier & pilon".remove_from_group("prehensible")
		$"Mortier & pilon/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
