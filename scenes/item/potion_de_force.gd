extends Node3D

func _prendre():
	$audio_pick.play()
	$Timer.start()
	InventoryManager.po_for += 1
	self.remove_from_group("prehensible")
	$interaction_area.remove_from_group("prehensible")
	$interaction_area/interaction_form.remove_from_group("prehensible")
	$"Potion de force".remove_from_group("prehensible")
	$"Potion de force/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
