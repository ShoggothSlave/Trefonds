extends Node3D

func _on_respawn_timer_timeout() -> void:
	$anim_champi.play("respawn")
	self.add_to_group("prehensible")
	$interaction_area.add_to_group("prehensible")
	$interaction_area/interaction_form.add_to_group("prehensible")
	$"Amanite Phalloïde".add_to_group("prehensible")
	$"Amanite Phalloïde/body_collision2".add_to_group("prehensible")

func _prendre():
	if InventoryManager.champv2 < 4:
		$anim_champi.play("pick")
		$respawn_timer.start()
		InventoryManager.champv2 = InventoryManager.champv2 + 1
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Amanite Phalloïde".remove_from_group("prehensible")
		$"Amanite Phalloïde/body_collision2".remove_from_group("prehensible")
