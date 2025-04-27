extends Sprite2D

var touch = false

func _on_area_rondache_mouse_entered() -> void:
	$anim_rondache_inv.play("shaded")
	touch = true

func _on_area_rondache_mouse_exited() -> void:
	$anim_rondache_inv.play("unshaded")
	touch = false

func _on_area_rondache_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if Manager.rondache == true:
			if Manager.shield_en_main != 2:
				$audio_rondache.play()
