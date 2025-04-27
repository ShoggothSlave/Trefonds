extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.flint)
	$anim_flint.play(str(frame))

func _on_area_flint_mouse_entered() -> void:
	$anim_shader.play("shaded")
	touch = true

func _on_area_flint_mouse_exited() -> void:
	$anim_shader.play("unshaded")
	touch = false

func _on_area_flint_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.flint > 0:
			$timer_flint.start()
			$audio_flint.play()

func _on_timer_flint_timeout() -> void:
	$audio_flint.play()
