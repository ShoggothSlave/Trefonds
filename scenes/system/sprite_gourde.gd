extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.gourde)
	$anim_gourde.play(str(frame))

func _on_area_gourde_mouse_entered() -> void:
	$anim_shader.play("shaded")
	touch = true

func _on_area_gourde_mouse_exited() -> void:
	$anim_shader.play("unshaded")
	touch = false

func _on_area_gourde_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.gourde > 0:
			InventoryManager.gourde = InventoryManager.gourde -1
			Manager.soif += 25
			$audio_boire.play()
