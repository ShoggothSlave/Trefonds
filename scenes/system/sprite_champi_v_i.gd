extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.champv1)
	$anim_champi_vi.play(str(frame))

func _on_area_champi_vi_mouse_entered() -> void:
	$anim_shader_champi_vi.play("shaded")
	touch = true

func _on_area_champi_vi_mouse_exited() -> void:
	$anim_shader_champi_vi.play("unshaded")
	touch = false

func _on_area_champi_vi_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.champv1 > 0:
			InventoryManager.champv1 = InventoryManager.champv1 -1
			Manager.faim = Manager.faim +3
			$audio_gulp.play()
			$"../sprite_champi_v_ii/timer_champ_vii".start()

func _on_timer_champ_2_timeout() -> void:
	$audio_ouch.play()
	Manager.Vie_Joueur = Manager.Vie_Joueur -7
