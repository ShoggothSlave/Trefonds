extends Sprite2D

func _on_body_pants_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler.show()
	$pants_label.show()

func _on_body_pants_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler.hide()
	$pants_label.hide()

func _on_defiler_g_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_g/coll_pants_g/button_g.show()
	$defiler.frame = 1

func _on_defiler_g_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_g/coll_pants_g/button_g.hide()
	$defiler.frame = 0

func _on_button_g_pressed() -> void:
	if Manager.pants == 1 and Manager.pantscuir == true:
		Manager.pants -= 1
		Manager.armure = Manager.armure - 0.3

func _on_defiler_d_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_d/coll_pants_d/button_d.show()
	$defiler.frame = 2

func _on_defiler_d_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_d/coll_pants_d/button_d.hide()
	$defiler.frame = 0

func _on_button_d_pressed() -> void:
	if Manager.pants == 0 and Manager.pantscuir == true:
		Manager.pants += 1
		Manager.armure = Manager.armure + 0.3

func _process(_delta: float) -> void:
	if Manager.pants == 0:
		$pants_label.text = ""
	elif Manager.pants == 1:
		$pants_label.text = "Pentalon de cuir"
