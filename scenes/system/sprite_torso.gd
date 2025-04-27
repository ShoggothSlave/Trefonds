extends Sprite2D

func _on_body_torso_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler.show()
	$torso_label.show()

func _on_body_torso_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler.hide()
	$torso_label.hide()

func _on_defiler_g_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_g/coll_torso_g/button_g.show()
	$defiler.frame = 1

func _on_defiler_g_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_g/coll_torso_g/button_g.hide()
	$defiler.frame = 0

func _on_button_g_pressed() -> void:
	if Manager.torso == 1 and Manager.vestecuir == true:
		Manager.torso -= 1
		Manager.armure = Manager.armure - 0.3

func _on_defiler_d_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_d/coll_torso_d/button_d.show()
	$defiler.frame = 2

func _on_defiler_d_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_d/coll_torso_d/button_d.hide()
	$defiler.frame = 0

func _on_button_d_pressed() -> void:
	if Manager.torso == 0 and Manager.vestecuir == true:
		Manager.torso += 1
		Manager.armure = Manager.armure + 0.3

func _process(_delta: float) -> void:
	if Manager.torso == 0:
		$torso_label.text = ""
	elif Manager.torso == 1:
		$torso_label.text = "Chandail de cuir"
