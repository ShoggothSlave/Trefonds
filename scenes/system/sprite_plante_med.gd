extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.plantmed)
	$anim_plante_med.play(str(frame))

func _on_area_plante_med_mouse_entered() -> void:
	$anim_shader_plante_med.play("shaded")
	touch = true

func _on_area_plante_med_mouse_exited() -> void:
	$anim_shader_plante_med.play("unshaded")
	touch = false

func _on_area_plante_med_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.plantmed > 0:
			$audio_plantemed.play()
