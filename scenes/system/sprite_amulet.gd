extends Sprite2D

func _on_body_amu_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler.show()
	$amu_label.show()

func _on_body_amu_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler.hide()
	$amu_label.hide()

func _on_defiler_g_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_g/coll_amu_g/button_g.show()
	$defiler.frame = 1

func _on_defiler_g_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_g/coll_amu_g/button_g.hide()
	$defiler.frame = 0

func _on_button_g_pressed() -> void:
	if Manager.equip_amulet == 15:
		if Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 14:
		if Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 13:
		if Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 12:
		if Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 11:
		if Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 10:
		if Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 9:
		if Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 8:
		if Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 7:
		if Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 6:
		if Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 5:
		if Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 4:
		if Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 3:
		if Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 2:
		if Manager.amu1 == true:
			Manager.equip_amulet = 1
		else:
			Manager.equip_amulet = 0
	elif Manager.equip_amulet == 1:
			Manager.equip_amulet = 0

func _on_defiler_d_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_d/coll_amu_d/button_d.show()
	$defiler.frame = 2

func _on_defiler_d_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_d/coll_amu_d/button_d.hide()
	$defiler.frame = 0

func _on_button_d_pressed() -> void:
	if Manager.equip_amulet == 0:
		if Manager.amu1 == true:
			Manager.equip_amulet = 1
		elif Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 1:
		if Manager.amu2 == true:
			Manager.equip_amulet = 2
		elif Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 2:
		if Manager.amu3 == true:
			Manager.equip_amulet = 3
		elif Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 3:
		if Manager.amu4 == true:
			Manager.equip_amulet = 4
		elif Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 4:
		if Manager.amu5 == true:
			Manager.equip_amulet = 5
		elif Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 5:
		if Manager.amu6 == true:
			Manager.equip_amulet = 6
		elif Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 6:
		if Manager.amu7 == true:
			Manager.equip_amulet = 7
		elif Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 7:
		if Manager.amu8 == true:
			Manager.equip_amulet = 8
		elif Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 8:
		if Manager.amu9 == true:
			Manager.equip_amulet = 9
		elif Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 9:
		if Manager.amu10 == true:
			Manager.equip_amulet = 10
		elif Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 10:
		if Manager.amu11 == true:
			Manager.equip_amulet = 11
		elif Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 11:
		if Manager.amu12 == true:
			Manager.equip_amulet = 12
		elif Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 12:
		if Manager.amu13 == true:
			Manager.equip_amulet = 13
		elif Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 13:
		if Manager.amu14 == true:
			Manager.equip_amulet = 14
		elif Manager.amu15 == true:
			Manager.equip_amulet = 15
	elif Manager.equip_amulet == 14:
		if Manager.amu15 == true:
			Manager.equip_amulet = 15

func _process(_delta: float) -> void:
	if Manager.equip_amulet == 0:
		$amu_label.text = ""
	elif Manager.equip_amulet == 1:
		$amu_label.text = "Amulette de force en bronze"
	elif Manager.equip_amulet == 2:
		$amu_label.text = "Amulette de force en argent"
	elif Manager.equip_amulet == 3:
		$amu_label.text = "Amulette de force en or"
	elif Manager.equip_amulet == 4:
		$amu_label.text = "Amulette de respiration en bronze"
	elif Manager.equip_amulet == 5:
		$amu_label.text = "Amulette de respiration en argent"
	elif Manager.equip_amulet == 6:
		$amu_label.text = "Amulette de respiration en or"
	elif Manager.equip_amulet == 7:
		$amu_label.text = "Amulette de vitesse en bronze"
	elif Manager.equip_amulet == 8:
		$amu_label.text = "Amulette de vitesse en argent"
	elif Manager.equip_amulet == 9:
		$amu_label.text = "Amulette de vitesse en or"
	elif Manager.equip_amulet == 10:
		$amu_label.text = "Amulette d'armure en bronze"
	elif Manager.equip_amulet == 11:
		$amu_label.text = "Amulette d'armure en argent"
	elif Manager.equip_amulet == 12:
		$amu_label.text = "Amulette d'armure en or"
	elif Manager.equip_amulet == 13:
		$amu_label.text = "Amulette de vie en bronze"
	elif Manager.equip_amulet == 14:
		$amu_label.text = "Amulette de vie en argent"
	elif Manager.equip_amulet == 15:
		$amu_label.text = "Amulette de vie en or"
