extends Sprite2D

var touch = false

func _on_area_knife_mouse_entered() -> void:
	$anim_knife_shader.play("shaded")
	touch = true

func _on_area_knife_mouse_exited() -> void:
	$anim_knife_shader.play("unshaded")
	touch = false

func _on_area_knife_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if Manager.knife == true:
			if Manager.arme_en_main != 1:
				$audio_knife.play()
