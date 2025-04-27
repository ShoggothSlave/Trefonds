extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.mirtilles)
	$anim_myrtilles.play(str(frame))

func _on_area_myrtilles_mouse_entered() -> void:
	$anim_shader.play("shaded")
	touch = true

func _on_area_myrtilles_mouse_exited() -> void:
	$anim_shader.play("unshaded")
	touch = false

func _on_area_myrtilles_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.mirtilles > 0:
			InventoryManager.mirtilles = InventoryManager.mirtilles -1
			Manager.faim = Manager.faim +3
			$audio_gulp.play()
