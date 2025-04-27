extends Sprite2D

var touch = false

func _on_area_sword_mouse_entered() -> void:
	$anim_shader_sword.play("shaded")
	touch = true

func _on_area_sword_mouse_exited() -> void:
	$anim_shader_sword.play("unshaded")
	touch = false

func _on_area_sword_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if Manager.sword == true:
			if Manager.arme_en_main != 2:
				$audio_sword.play()
