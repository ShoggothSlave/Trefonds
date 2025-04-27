extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.raw_meat)
	$anim_raw_meat.play(str(frame))

func _on_raw_meat_area_mouse_entered() -> void:
	$anim_shader.play("shaded")
	touch = true

func _on_raw_meat_area_mouse_exited() -> void:
	$anim_shader.play("unshaded")
	touch = false

func _on_raw_meat_area_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.raw_meat > 0:
			$timer_rawmeat.start()
			InventoryManager.raw_meat = InventoryManager.raw_meat -1
			Manager.faim = Manager.faim +3
			$audio_glurp.play()

func _on_timer_rawmeat_timeout() -> void:
	Manager.Vie_Joueur = Manager.Vie_Joueur -5
	$audio_ouch.play()
