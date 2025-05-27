extends Node3D

var opened = false

func _ouvrir():
	if opened == false:
		$close_timer.start()
		$AnimationPlayer.play("ouvrir")
		opened = true
		self.remove_from_group("ouvrable")
		$malle_bas/Malle.remove_from_group("ouvrable")
		$malle_bas/Malle/Malle.remove_from_group("ouvrable")

func _on_close_timer_timeout() -> void:
	$AnimationPlayer.play("fermer")
	opened = false
	self.add_to_group("ouvrable")
	$malle_bas/Malle.add_to_group("ouvrable")
	$malle_bas/Malle/Malle.add_to_group("ouvrable")
