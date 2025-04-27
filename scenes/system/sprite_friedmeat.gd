extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.fried_meat)
	$anim_fried_meat.play(str(frame))

func _on_area_friedmeat_mouse_entered() -> void:
	$anim_shader.play("shaded")
	touch = true

func _on_area_friedmeat_mouse_exited() -> void:
	$anim_shader.play("unshaded")
	touch = false

func _on_area_friedmeat_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.fried_meat > 0:
			InventoryManager.fried_meat = InventoryManager.fried_meat -1
			Manager.faim = Manager.faim +15
			$audio_glurp.play()
