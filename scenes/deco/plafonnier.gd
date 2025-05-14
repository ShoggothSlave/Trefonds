extends Node3D

func _ready() -> void:
	$AnimationPlayer.play("balancement")

func _allumer():
	if InventoryManager.flint == 2:
		$AudioStreamPlayer.play()
		$fired_candle2.show()
		$fired_candle3.show()
		$fired_candle4.show()
		$fired_candle5.show()
		$OmniLight3D.show()
		$Timer.start()
		remove_from_group("allumable")

func _on_timer_timeout() -> void:
	$fired_candle2.hide()
	$fired_candle3.hide()
	$fired_candle4.hide()
	$fired_candle5.hide()
	$OmniLight3D.hide()
	add_to_group("allumable")
