extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.belladone)
	$anim_baies_noires.play(str(frame))

func _on_area_2d_mouse_entered() -> void:
	$anim_shader.play("shaded")
	touch = true

func _on_area_2d_mouse_exited() -> void:
	$anim_shader.play("unshaded")
	touch = false

func _on_area_2d_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.belladone > 0:
			InventoryManager.belladone = InventoryManager.belladone -1
			Manager.faim = Manager.faim +2
			$audio_gulp.play()
			$timer_belladone.start()

func _on_timer_belladone_timeout() -> void:
	Manager.Vie_Joueur = Manager.Vie_Joueur -15
	$audio_ouch.play()
