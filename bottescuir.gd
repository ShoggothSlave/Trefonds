extends Node3D

func _prendre():
	Manager.boots = 1
	Manager.armure = Manager.armure + 0.2
	$audio_pick.play()
	$Timer.start()
	self.remove_from_group("prehensible")
	$interaction_area.remove_from_group("prehensible")
	$interaction_area/interaction_form.remove_from_group("prehensible")
	$"Bottes de cuir".remove_from_group("prehensible")
	$"Bottes de cuir/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
