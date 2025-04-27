extends Sprite2D

func _on_body_boots_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler.show()
	$boots_label.show()

func _on_body_boots_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler.hide()
	$boots_label.hide()

func _on_defiler_g_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_g/coll_boots_g/button_g.show()
	$defiler.frame = 1

func _on_defiler_g_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_g/coll_boots_g/button_g.hide()
	$defiler.frame = 0

func _on_button_g_pressed() -> void:
	if Manager.boots == 1 and Manager.bottescuir == true:
		Manager.boots -= 1
		Manager.armure = Manager.armure - 0.2

func _on_defiler_d_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_d/coll_boots_d/button_d.show()
	$defiler.frame = 2

func _on_defiler_d_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_d/coll_boots_d/button_d.hide()
	$defiler.frame = 0

func _on_button_d_pressed() -> void:
	if Manager.boots == 0 and Manager.bottescuir == true:
		Manager.boots += 1
		Manager.armure = Manager.armure + 0.2

func _process(_delta: float) -> void:
	if Manager.boots == 0:
		$boots_label.text = ""
	elif Manager.boots == 1:
		$boots_label.text = "Bottes de cuir"
