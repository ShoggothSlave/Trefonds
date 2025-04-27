extends Node3D

func _prendre():
	if InventoryManager.plantmed < 8:
		$anim_plantemed.play("pick_plant")
		$respawn_timer.start()
		InventoryManager.plantmed = InventoryManager.plantmed + 1
		self.remove_from_group("prehensible")
		$Area3D.remove_from_group("prehensible")
		$Area3D/CollisionShape3D.remove_from_group("prehensible")
		$Araceae.remove_from_group("prehensible")
		$Araceae/body_collision2.remove_from_group("prehensible")

func _on_respawn_timer_timeout() -> void:
	$AnimationPlayer.play("respawn_plant")
