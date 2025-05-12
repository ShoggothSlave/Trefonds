extends Node3D

func _allumer():
	if InventoryManager.flint == 2:
		$AudioStreamPlayer.play()
		$fired_candle.show()
		$Timer.start()
		remove_from_group("allumable")

func _on_timer_timeout() -> void:
	$fired_candle.hide()
	add_to_group("allumable")
