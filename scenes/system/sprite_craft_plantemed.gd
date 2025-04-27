extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.c_plantmed)
	$anim_c_plmed.play(str(frame))

func _on_area_c_plmed_mouse_entered() -> void:
	$anim_shader.play("shaded")
	touch = true

func _on_area_c_plmed_mouse_exited() -> void:
	$anim_shader.play("unshaded")
	touch = false

func _on_area_c_plmed_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque") and InventoryManager.c_plantmed >= 1 :
		if touch == true:
			InventoryManager.plantmed = InventoryManager.c_plantmed -1
			InventoryManager.c_plantmed = InventoryManager.plantmed + 1
