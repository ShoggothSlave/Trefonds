extends Sprite2D

func _on_body_ringi_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler.show()
	$iring_label.show()

func _on_body_ringi_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler.hide()
	$iring_label.hide()

func _on_defiler_g_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_g/coll_ringi_g/button_g.show()
	$defiler.frame = 1

func _on_defiler_g_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_g/coll_ringi_g/button_g.hide()
	$defiler.frame = 0

func _on_button_g_pressed() -> void:
	if Manager.equip_ring_1 == 15:
		if Manager.iring14 == true:
			Manager.iring15 = true
			Manager.iiring15 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring13 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring12 == true:
			Manager.iring13 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring11 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring10 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring9 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring8 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring7 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring6 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring5 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring4 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring3 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1 == 14:
		if Manager.iring13 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring12 == true:
			Manager.iring13 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring11 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring10 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring9 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring8 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring7 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring6 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring5 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring4 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring3 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1== 13:
		if Manager.iring12 == true:
			Manager.iring13 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring11 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring10 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring9 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring8 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring7 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring6 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring5 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring4 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring3 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1 == 12:
		if Manager.iring11 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring10 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring9 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring8 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring7 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring6 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring5 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring4 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring3 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1 == 11:
		if Manager.iring10 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring9 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring8 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring7 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring6 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring5 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring4 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring3 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1 == 10:
		if Manager.iring9 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring8 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring7 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring6 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring5 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring4 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring3 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1 == 9:
		if Manager.iring8 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring7 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring6 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring5 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring4 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring3 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1 == 8:
		if Manager.iring7 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring6 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring5 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring4 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring3 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1 == 7:
		if Manager.iring6 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring5 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring4 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring3 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1 == 6:
		if Manager.iring5 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring4 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring3 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1 == 5:
		if Manager.iring4 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring3 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1 == 4:
		if Manager.iring3 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1 == 3:
		if Manager.iring2 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 2
			Manager.iring2 = false
			Manager.iiring2 = false
		elif Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0
	elif Manager.equip_ring_1 == 1:
		if Manager.iring1 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		else:
			Manager.iring1 = true
			Manager.iiring1 = true
			Manager.equip_ring_1 = 0

func _on_defiler_d_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_d/coll_ringi_d/button_d.show()
	$defiler.frame = 2

func _on_defiler_d_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_d/coll_ringi_d/button_d.hide()
	$defiler.frame = 0

func _on_button_d_pressed() -> void:
	if Manager.equip_ring_1 == 0:
		if Manager.iring1 == true:
			Manager.equip_ring_1 = 1
			Manager.iring1 = false
			Manager.iiring1 = false
		elif Manager.iring2 == true:
			Manager.iiring1 = true
			Manager.iring1 = true
			Manager.equip_ring_1 = 2
			Manager.iiring2 = false
			Manager.iring2 = false
		elif Manager.iring3 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring4 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring5 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring6 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring7 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring8 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring9 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring10 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring11 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring12 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 1:
		if Manager.iring2 == true:
			Manager.iiring1 = true
			Manager.iring1 = true
			Manager.equip_ring_1 = 2
			Manager.iiring2 = false
			Manager.iring2 = false
		elif Manager.iring3 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring4 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring5 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring6 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring7 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring8 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring9 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring10 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring11 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring12 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 2:
		if Manager.iring3 == true:
			Manager.iring2 = true
			Manager.iiring2 = true
			Manager.equip_ring_1 = 3
			Manager.iring3 = false
			Manager.iiring3 = false
		elif Manager.iring4 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring5 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring6 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring7 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring8 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring9 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring10 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring11 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring12 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 3:
		if Manager.iring4 == true:
			Manager.iring3 = true
			Manager.iiring3 = true
			Manager.equip_ring_1 = 4
			Manager.iring4 = false
			Manager.iiring4 = false
		elif Manager.iring5 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring6 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring7 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring8 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring9 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring10 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring11 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring12 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 4:
		if Manager.iring5 == true:
			Manager.iring4 = true
			Manager.iiring4 = true
			Manager.equip_ring_1 = 5
			Manager.iring5 = false
			Manager.iiring5 = false
		elif Manager.iring6 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring7 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring8 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring9 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring10 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring11 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring12 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 5:
		if Manager.iring6 == true:
			Manager.iring5 = true
			Manager.iiring5 = true
			Manager.equip_ring_1 = 6
			Manager.iring6 = false
			Manager.iiring6 = false
		elif Manager.iring7 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring8 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring9 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring10 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring11 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring12 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 6:
		if Manager.iring7 == true:
			Manager.iring6 = true
			Manager.iiring6 = true
			Manager.equip_ring_1 = 7
			Manager.iring7 = false
			Manager.iiring7 = false
		elif Manager.iring8 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring9 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring10 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring11 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring12 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 7:
		if Manager.iring8 == true:
			Manager.iring7 = true
			Manager.iiring7 = true
			Manager.equip_ring_1 = 8
			Manager.iring8 = false
			Manager.iiring8 = false
		elif Manager.iring9 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring10 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring11 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring12 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 8:
		if Manager.iring9 == true:
			Manager.iring8 = true
			Manager.iiring8 = true
			Manager.equip_ring_1 = 9
			Manager.iring9 = false
			Manager.iiring9 = false
		elif Manager.iring10 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring11 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring12 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 9:
		if Manager.iring10 == true:
			Manager.iring9 = true
			Manager.iiring9 = true
			Manager.equip_ring_1 = 10
			Manager.iring10 = false
			Manager.iiring10 = false
		elif Manager.iring11 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring12 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 10:
		if Manager.iring11 == true:
			Manager.iring10 = true
			Manager.iiring10 = true
			Manager.equip_ring_1 = 11
			Manager.iring11 = false
			Manager.iiring11 = false
		elif Manager.iring12 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 11:
		if Manager.iring12 == true:
			Manager.iring11 = true
			Manager.iiring11 = true
			Manager.equip_ring_1 = 12
			Manager.iring12 = false
			Manager.iiring12 = false
		elif Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 12:
		if Manager.iring13 == true:
			Manager.iring12 = true
			Manager.iiring12 = true
			Manager.equip_ring_1 = 13
			Manager.iring13 = false
			Manager.iiring13 = false
		elif Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 13:
		if Manager.iring14 == true:
			Manager.iring13 = true
			Manager.iiring13 = true
			Manager.equip_ring_1 = 14
			Manager.iring14 = false
			Manager.iiring14 = false
		elif Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false
	elif Manager.equip_ring_1 == 14:
		if Manager.iring15 == true:
			Manager.iring14 = true
			Manager.iiring14 = true
			Manager.equip_ring_1 = 15
			Manager.iring15 = false
			Manager.iiring15 = false

func _process(_delta: float) -> void:
	if Manager.equip_ring_1 == 0:
		$iring_label.text = ""
	elif Manager.equip_ring_1 == 1:
		$iring_label.text = "Anneau de respiration en bronze"
	elif Manager.equip_ring_1 == 2:
		$iring_label.text = "Anneau de respiration en argent"
	elif Manager.equip_ring_1 == 3:
		$iring_label.text = "Anneau de respiration en or"
	elif Manager.equip_ring_1 == 4:
		$iring_label.text = "Anneau de vitesse en bronze"
	elif Manager.equip_ring_1 == 5:
		$iring_label.text = "Anneau de vitesse en argent"
	elif Manager.equip_ring_1 == 6:
		$iring_label.text = "Anneau de vitesse en or"
	elif Manager.equip_ring_1 == 7:
		$iring_label.text = "Anneau d'armure en bronze"
	elif Manager.equip_ring_1 == 8:
		$iring_label.text = "Anneau d'armure en argent"
	elif Manager.equip_ring_1 == 9:
		$iring_label.text = "Anneau d'armure en or"
	elif Manager.equip_ring_1 == 10:
		$iring_label.text = "Anneau de force en bronze"
	elif Manager.equip_ring_1 == 11:
		$iring_label.text = "Anneau de force en argent"
	elif Manager.equip_ring_1 == 12:
		$iring_label.text = "Anneau de force en or"
	elif Manager.equip_ring_1 == 13:
		$iring_label.text = "Anneau de vie en bronze"
	elif Manager.equip_ring_1 == 14:
		$iring_label.text = "Anneau de vie en argent"
	elif Manager.equip_ring_1 == 15:
		$iring_label.text = "Anneau de vie en or"
