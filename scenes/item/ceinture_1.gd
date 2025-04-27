extends Node3D

func _prendre():
	Manager.ceinture_simple = true
	$audio_pick.play()
	$Timer.start()
	self.remove_from_group("prehensible")
	$interaction_area.remove_from_group("prehensible")
	$interaction_area/interaction_form.remove_from_group("prehensible")
	$"Ceinture de cuir simple".remove_from_group("prehensible")
	$"Ceinture de cuir simple/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
