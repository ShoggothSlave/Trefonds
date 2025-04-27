extends Node3D

func _prendre():
	if InventoryManager.buche < 6:
		InventoryManager.buche = InventoryManager.buche + 1
		self.remove_from_group("prehensible")
		$Cylindre.remove_from_group("prehensible")
		$Cylindre/Buche.remove_from_group("prehensible")
		$AudioStreamPlayer.play()
		$Timer.start()

func _on_timer_timeout() -> void:
	queue_free()
