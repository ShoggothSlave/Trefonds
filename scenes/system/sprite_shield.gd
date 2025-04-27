extends Sprite2D

func _on_body_shield_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler.show()
	$shield_label.show()

func _on_body_shield_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler.hide()
	$shield_label.hide()

func _on_defiler_g_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_g/coll_shield_g/button_g.show()
	$defiler.frame = 1

func _on_defiler_g_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_g/coll_shield_g/button_g.hide()
	$defiler.frame = 0

func _on_button_g_pressed() -> void:
	if Manager.shield_en_main == 2:
		Manager.shield_en_main = 0

func _on_defiler_d_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_d/coll_shield_d/button_d.show()
	$defiler.frame = 2

func _on_defiler_d_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_d/coll_shield_d/button_d.hide()
	$defiler.frame = 0

func _on_button_d_pressed() -> void:
	if Manager.shield_en_main == 0:
		if Manager.rondache == true:
			Manager.shield_en_main = 2
	elif Manager.shield_en_main == 1:
		if Manager.rondache == true:
			Manager.shield_en_main = 2
			if Manager.sword == true:
				Manager.arme_en_main = 2
			elif Manager.knife == true:
				Manager.arme_en_main = 1
			else:
				Manager.arme_en_main = 0

func _process(_delta: float) -> void:
	if Manager.shield_en_main == 0:
		$shield_label.text = ""
	elif Manager.shield_en_main == 1:
		$shield_label.text = "Bâton de combat"
	elif Manager.shield_en_main == 2:
		$shield_label.text = "Rondache"
