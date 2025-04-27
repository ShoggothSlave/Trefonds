extends Sprite2D

var touch = false

func _process(_delta: float) -> void:
	self.frame = int(InventoryManager.bandage)
	$amin_bandage.play(str(frame))

func _on_area_bandage_mouse_entered() -> void:
	$anim_shader.play("shaded")
	touch = true

func _on_area_bandage_mouse_exited() -> void:
	$anim_shader.play("unshaded")
	touch = false

func _on_area_bandage_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("attaque"):
		if InventoryManager.bandage > 0:
			InventoryManager.bandage = InventoryManager.bandage -1
			Manager.Vie_Joueur = Manager.Vie_Joueur +15
			$audio_tape.play()
