extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.mousse)
	$anim_moss.play(str(frame))

func _on_area_moss_mouse_entered() -> void:
	$anim_shader.play("shaded")
	touch = true

func _on_area_moss_mouse_exited() -> void:
	$anim_shader.play("unshaded")
	touch = false

func _on_area_moss_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.moss > 0:
			$audio_moss.play()
