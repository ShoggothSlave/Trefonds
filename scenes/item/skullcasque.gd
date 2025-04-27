extends Node3D

func _prendre():
	Manager.hat = 1
	Manager.armure = Manager.armure + 0.2
	$audio_pick.play()
	$Timer.start()
	self.remove_from_group("prehensible")
	$interaction_area.remove_from_group("prehensible")
	$interaction_area/interaction_form.remove_from_group("prehensible")
	$"Casque en cuir".remove_from_group("prehensible")
	$"Casque en cuir/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	$Sprite3D.frame = 1
