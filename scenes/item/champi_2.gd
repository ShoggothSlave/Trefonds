extends Node3D

func _on_respawn_timer_timeout() -> void:
	$anim_champi.play("respawn")
	self.add_to_group("prehensible")
	$interaction_area.add_to_group("prehensible")
	$interaction_area/interaction_form.add_to_group("prehensible")
	$Coprinus.add_to_group("prehensible")
	$Coprinus/body_collision2.add_to_group("prehensible")

func _prendre():
	if InventoryManager.champ2 < 8:
		$anim_champi.play("pick")
		$respawn_timer.start()
		InventoryManager.champ2 = InventoryManager.champ2 + 1
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$Coprinus.remove_from_group("prehensible")
		$Coprinus/body_collision2.remove_from_group("prehensible")
		if QuetesManager.quest_coprinus == true:
			QuetesManager.coprinus += 1
