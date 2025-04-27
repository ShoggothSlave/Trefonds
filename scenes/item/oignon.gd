extends Node3D

func _on_respawn_timer_timeout() -> void:
	$anim_oignon.play("respawn")
	self.add_to_group("prehensible")
	$interaction_area.add_to_group("prehensible")
	$interaction_area/interaction_form.add_to_group("prehensible")
	$Oignon.add_to_group("prehensible")
	$Oignon.add_to_group("prehensible")

func _prendre():
	if InventoryManager.oignon < 2:
		$anim_oignon.play("pick")
		$respawn_timer.start()
		InventoryManager.oignon = InventoryManager.oignon + 1
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$Oignon.remove_from_group("prehensible")
		$Oignon/body_collision2.remove_from_group("prehensible")
