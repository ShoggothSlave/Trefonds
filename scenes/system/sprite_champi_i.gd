extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.champ1)
	$anim_champi_i.play(str(frame))

func _on_area_champi_i_mouse_entered() -> void:
	$anim_shader_champi_i.play("shaded")
	touch = true

func _on_area_champi_i_mouse_exited() -> void:
	$anim_shader_champi_i.play("unshaded")
	touch = false

@warning_ignore("unused_parameter")
func _on_area_champi_i_input_event(_viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.champ1 > 0:
			InventoryManager.champ1 = InventoryManager.champ1 -1
			Manager.Vie_Joueur = Manager.faim +5
			$audio_gulp.play()
