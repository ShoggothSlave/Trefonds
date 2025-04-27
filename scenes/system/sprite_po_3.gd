extends Sprite2D

func _on_body_po_3_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler.show()
	$po3_label.show()

func _on_body_po_3_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler.hide()
	$po3_label.hide()

func _on_defiler_g_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_g/coll_po3_g/button_g.show()
	$defiler.frame = 1

func _on_defiler_g_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_g/coll_po3_g/button_g.hide()
	$defiler.frame = 0

func _on_button_g_pressed() -> void:
	if Manager.slot_po_3 == 6 and InventoryManager.po_demi_sup > 0:
		Manager.slot_po_3 = 5
	elif Manager.slot_po_3 == 5 and InventoryManager.po_con > 0:
		Manager.slot_po_3 = 4
	elif Manager.slot_po_3 == 4 and InventoryManager.po_demi_con > 0:
		Manager.slot_po_3 = 3
	elif Manager.slot_po_3 == 3 and InventoryManager.po_min > 0:
		Manager.slot_po_3 = 2
	elif Manager.slot_po_3 == 2 and InventoryManager.po_demi_min > 0:
		Manager.slot_po_3 = 1
	elif Manager.slot_po_3 == 1:
		Manager.slot_po_3 = 0

func _on_defiler_d_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_d/coll_po3_d/button_d.show()
	$defiler.frame = 2

func _on_defiler_d_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_d/coll_po3_d/button_d.hide()
	$defiler.frame = 0

func _on_button_d_pressed() -> void:
	if Manager.slot_po_3 == 0 and InventoryManager.po_demi_min > 0:
		Manager.slot_po_3 = 1
	elif Manager.slot_po_3 == 1 and InventoryManager.po_min > 0:
		Manager.slot_po_3 = 2
	elif Manager.slot_po_3 == 2 and InventoryManager.po_demi_con > 0:
		Manager.slot_po_3 = 3
	elif Manager.slot_po_3 == 3 and InventoryManager.po_con > 0:
		Manager.slot_po_3 = 4
	elif Manager.slot_po_3 == 4 and InventoryManager.po_demi_sup > 0:
		Manager.slot_po_3 = 5
	elif Manager.slot_po_3 == 5 and InventoryManager.po_sup > 0:
		Manager.slot_po_3 = 6

func _process(_delta: float) -> void:
	if Manager.slot_po_3 == 0:
		$po3_label.text = ""
		$po3_enum.text = ""
	elif Manager.slot_po_3 == 1:
		$po3_label.text = "Demi potion mineure"
		$po3_enum.text = str(InventoryManager.po_demi_min)
	elif Manager.slot_po_3 == 2:
		$po3_label.text = "Potion mineure"
		$po3_enum.text = str(InventoryManager.po_min)
	elif Manager.slot_po_3 == 3:
		$po3_label.text = "Demi potion conséquente"
		$po3_enum.text = str(InventoryManager.po_demi_con)
	elif Manager.slot_po_3 == 4:
		$po3_label.text = "Potion conséquente"
		$po3_enum.text = str(InventoryManager.po_con)
	elif Manager.slot_po_3 == 5:
		$po3_label.text = "Demi super-potion"
		$po3_enum.text = str(InventoryManager.po_demi_sup)
	elif Manager.slot_po_3 == 6:
		$po3_label.text = "Super-potion"
		$po3_enum.text = str(InventoryManager.po_sup)
