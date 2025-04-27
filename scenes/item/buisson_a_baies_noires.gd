extends Node3D

func _on_body_detection_body_entered(_body: Node3D) -> void:
	$body_detection/body_collision.play()

func _prendre():
	if InventoryManager.mirtilles < 10:
		$anim_blackberries.play("pick_berries")
		$respawn_timer.start()
		InventoryManager.belladone = InventoryManager.belladone + 1
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Baies Noires".remove_from_group("prehensible")

func _on_respawn_timer_timeout() -> void:
	$anim_blackberries.play("spawn_berries")
	self.add_to_group("prehensible")
	$interaction_area.add_to_group("prehensible")
	$interaction_area/interaction_form.add_to_group("prehensible")
	$"Baies Noires".add_to_group("prehensible")
