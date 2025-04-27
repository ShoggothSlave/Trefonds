extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.champv2)
	$anim_champi_vii.play(str(frame))

func _on_area_champi_vii_mouse_entered() -> void:
	$anim_shader_champi_vii.play("shaded")
	touch = true

func _on_area_champi_vii_mouse_exited() -> void:
	$anim_shader_champi_vii.play("unshaded")
	touch = false

func _on_area_champi_vii_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.champv2 > 0:
			InventoryManager.champv2 = InventoryManager.champv2 -1
			Manager.faim = Manager.faim +2
			$audio_gulp.play()
			$timer_champ_vii.start()

func _on_timer_champ_vii_timeout() -> void:
	$audio_ouch.play()
	Manager.Vie_Joueur = Manager.Vie_Joueur - 10
