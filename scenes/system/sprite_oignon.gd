extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.oignon)
	$anim_oignon.play(str(frame))

func _on_area_oignon_mouse_entered() -> void:
	$anim_shader_oignon.play("shaded")
	touch = true

func _on_area_oignon_mouse_exited() -> void:
	$anim_shader_oignon.play("unshaded")
	touch = false

func _on_area_oignon_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.oignon > 0:
			InventoryManager.oignon = InventoryManager.oignon -1
			Manager.faim = Manager.faim +5
			$audio_gulp.play()
