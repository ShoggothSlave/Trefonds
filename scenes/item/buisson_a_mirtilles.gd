extends Node3D

func _on_body_detection_body_entered(_body: Node3D) -> void:
	$audio_foliage.play()

func _on_respawn_timer_timeout() -> void:
	$anim_berries.play("respawn_berries")
	self.add_to_group("prehensible")
	$interaction_area.add_to_group("prehensible")
	$interaction_area/interaction_form.add_to_group("prehensible")
	$Mirtilles.add_to_group("prehensible")

func _prendre():
	if InventoryManager.mirtilles < 20:
		$anim_berries.play("pick_berries")
		$respawn_timer.start()
		InventoryManager.mirtilles = InventoryManager.mirtilles + 1
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$Mirtilles.remove_from_group("prehensible")
		if QuetesManager.quest_myrtilles == true:
			QuetesManager.myrtilles += 1
