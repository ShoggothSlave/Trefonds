extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.buche)
	$anim_buches.play(str(frame))

func _on_area_buches_mouse_entered() -> void:
	$anim_shader_buches.play("shaded")
	touch = true

func _on_area_buches_mouse_exited() -> void:
	$anim_shader_buches.play("unshaded")
	touch = false

func _on_area_buches_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.buche > 0:
			$audio_bois.play()
