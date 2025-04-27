extends Sprite2D

func _on_body_po_1_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler.show()
	$po1_label.show()

func _on_body_po_1_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler.hide()
	$po1_label.hide()

func _on_defiler_g_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_g/coll_po1_g/button_g.show()
	$defiler.frame = 1

func _on_defiler_g_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_g/coll_po1_g/button_g.hide()
	$defiler.frame = 0

func _on_button_g_pressed() -> void:
	if Manager.slot_po_1 == 6 and InventoryManager.po_demi_sup > 0:
		Manager.slot_po_1 = 5
	elif Manager.slot_po_1 == 5 and InventoryManager.po_con > 0:
		Manager.slot_po_1 = 4
	elif Manager.slot_po_1 == 4 and InventoryManager.po_demi_con > 0:
		Manager.slot_po_1 = 3
	elif Manager.slot_po_1 == 3 and InventoryManager.po_min > 0:
		Manager.slot_po_1 = 2
	elif Manager.slot_po_1 == 2 and InventoryManager.po_demi_min > 0:
		Manager.slot_po_1 = 1
	elif Manager.slot_po_1 == 1:
		Manager.slot_po_1 = 0

func _on_defiler_d_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_d/coll_po1_d/button_d.show()
	$defiler.frame = 2

func _on_defiler_d_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_d/coll_po1_d/button_d.hide()
	$defiler.frame = 0

func _on_button_d_pressed() -> void:
	if Manager.slot_po_1 == 0 and InventoryManager.po_demi_min > 0:
		Manager.slot_po_1 = 1
	elif Manager.slot_po_1 == 1 and InventoryManager.po_min > 0:
		Manager.slot_po_1 = 2
	elif Manager.slot_po_1 == 2 and InventoryManager.po_demi_con > 0:
		Manager.slot_po_1 = 3
	elif Manager.slot_po_1 == 3 and InventoryManager.po_con > 0:
		Manager.slot_po_1 = 4
	elif Manager.slot_po_1 == 4 and InventoryManager.po_demi_sup > 0:
		Manager.slot_po_1 = 5
	elif Manager.slot_po_1 == 5 and InventoryManager.po_sup > 0:
		Manager.slot_po_1 = 6

func _process(_delta: float) -> void:
	if Manager.slot_po_1 == 0:
		$po1_label.text = ""
		$po1_enum.text = ""
	elif Manager.slot_po_1 == 1:
		$po1_label.text = "Demi potion mineure"
		$po1_enum.text = str(InventoryManager.po_demi_min)
	elif Manager.slot_po_1 == 2:
		$po1_label.text = "Potion mineure"
		$po1_enum.text = str(InventoryManager.po_min)
	elif Manager.slot_po_1 == 3:
		$po1_label.text = "Demi potion conséquente"
		$po1_enum.text = str(InventoryManager.po_demi_con)
	elif Manager.slot_po_1 == 4:
		$po1_label.text = "Potion conséquente"
		$po1_enum.text = str(InventoryManager.po_demi_con)
	elif Manager.slot_po_1 == 5:
		$po1_label.text = "Demi super-potion"
		$po1_enum.text = str(InventoryManager.po_demi_sup)
	elif Manager.slot_po_1 == 6:
		$po1_label.text = "Super-potion"
		$po1_enum.text = str(InventoryManager.po_sup)
