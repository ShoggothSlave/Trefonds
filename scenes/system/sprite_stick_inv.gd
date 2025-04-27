extends Sprite2D

var touch = false

func _on_area_stick_mouse_entered() -> void:
	$anim_stick.play("shaded")
	touch = true

func _on_area_stick_mouse_exited() -> void:
	$anim_stick.play("unshaded")
	touch = false

func _on_area_stick_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if Manager.stick == true:
			if Manager.arme_en_main != 3:
				$audio_stick.play()
