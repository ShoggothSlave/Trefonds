extends Node3D

func _prendre():
	if InventoryManager.chaudron == false:
		$audio_pick.play()
		$Timer.start()
		InventoryManager.chaudron = true
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$Chaudron.remove_from_group("prehensible")
		$Chaudron/body_collision2.remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
