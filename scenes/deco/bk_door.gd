extends Node3D

var opened = false

func _unlock():
	if Manager.bronzekey == true:
		Manager.BKdoor = true
		$audio_unlock.play()
		self.remove_from_group("deverrouillable")
		$penture/porte.remove_from_group("deverrouillable")
		$penture/porte/porte.remove_from_group("deverrouillable")
		self.add_to_group("ouvrable")
		$penture/porte.add_to_group("ouvrable")
		$penture/porte/porte.add_to_group("ouvrable")

func _ouvrir():
	if Manager.BKdoor == true:
		if opened == false:
			$close_timer.start()
			$anim_door.play("open")
			opened = true
			self.remove_from_group("ouvrable")
			$penture/porte.remove_from_group("ouvrable")
			$penture/porte/porte.remove_from_group("ouvrable")
			self.add_to_group("fermable")
			$penture/porte.add_to_group("fermable")
			$penture/porte/porte.add_to_group("fermable")

func _fermer():
	if opened == true:
		$close_timer.start()
		$anim_door.play("close")
		opened = false
		self.remove_from_group("fermable")
		$penture/porte.remove_from_group("fermable")
		$penture/porte/porte.remove_from_group("fermable")
		self.add_to_group("ouvrable")
		$penture/porte.add_to_group("ouvrable")
		$penture/porte/porte.add_to_group("ouvrable")
		$close_timer.stop()

func _on_close_timer_timeout() -> void:
	$anim_door.play("close")
	opened = false
	self.remove_from_group("fermable")
	$penture/porte.remove_from_group("fermable")
	$penture/porte/porte.remove_from_group("fermable")
	self.add_to_group("ouvrable")
	$penture/porte.add_to_group("ouvrable")
	$penture/porte/porte.add_to_group("ouvrable")
