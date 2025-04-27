extends Node3D

func _on_respawn_timer_timeout() -> void:
	$anim_champi.play("respawn")
	self.add_to_group("prehensible")
	$interaction_area.add_to_group("prehensible")
	$interaction_area/interaction_form.add_to_group("prehensible")
	$"Bolet Blafard".add_to_group("prehensible")
	$"Bolet Blafard/body_collision2".add_to_group("prehensible")

func _prendre():
	if InventoryManager.champ1 < 6:
		$anim_champi.play("pick")
		$respawn_timer.start()
		InventoryManager.champ1 = InventoryManager.champ1 + 1
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Bolet Blafard".remove_from_group("prehensible")
		$"Bolet Blafard/body_collision2".remove_from_group("prehensible")
