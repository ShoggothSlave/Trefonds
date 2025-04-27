extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.champ2)
	$anim_champi_ii.play(str(frame))

func _on_area_champi_ii_mouse_entered() -> void:
	$anim_shader_champi_ii.play("shaded")

func _on_area_champi_ii_mouse_exited() -> void:
	$anim_shader_champi_ii.play("unshaded")

func _on_area_champi_ii_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.champ2 > 0:
			InventoryManager.champ2 = InventoryManager.champ2 -1
			$audio_gulp.play()
