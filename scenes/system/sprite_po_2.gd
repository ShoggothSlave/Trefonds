extends Sprite2D

func _on_body_po_2_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler.show()
	$po2_label.show()

func _on_body_po_2_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler.hide()
	$po2_label.hide()

func _on_defiler_g_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_g/coll_po2_g/button_g.show()
	$defiler.frame = 1

func _on_defiler_g_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_g/coll_po2_g/button_g.hide()
	$defiler.frame = 0

func _on_button_g_pressed() -> void:
	if Manager.slot_po_2 == 6 and InventoryManager.po_demi_sup > 0:
		Manager.slot_po_2 = 5
	elif Manager.slot_po_2 == 5 and InventoryManager.po_con > 0:
		Manager.slot_po_2 = 4
	elif Manager.slot_po_2 == 4 and InventoryManager.po_demi_con > 0:
		Manager.slot_po_2 = 3
	elif Manager.slot_po_2 == 3 and InventoryManager.po_min > 0:
		Manager.slot_po_2 = 2
	elif Manager.slot_po_2 == 2 and InventoryManager.po_demi_min > 0:
		Manager.slot_po_2 = 1
	elif Manager.slot_po_2 == 1:
		Manager.slot_po_2 = 0

func _on_defiler_d_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_d/coll_po2_d/button_d.show()
	$defiler.frame = 2

func _on_defiler_d_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_d/coll_po2_d/button_d.hide()
	$defiler.frame = 0

func _on_button_d_pressed() -> void:
	if Manager.slot_po_2 == 0 and InventoryManager.po_demi_min > 0:
		Manager.slot_po_2 = 1
	elif Manager.slot_po_2 == 1 and InventoryManager.po_min > 0:
		Manager.slot_po_2 = 2
	elif Manager.slot_po_2 == 2 and InventoryManager.po_demi_con > 0:
		Manager.slot_po_2 = 3
	elif Manager.slot_po_2 == 3 and InventoryManager.po_con > 0:
		Manager.slot_po_2 = 4
	elif Manager.slot_po_2 == 4 and InventoryManager.po_demi_sup > 0:
		Manager.slot_po_2 = 5
	elif Manager.slot_po_2 == 5 and InventoryManager.po_sup > 0:
		Manager.slot_po_2 = 6

func _process(_delta: float) -> void:
	if Manager.slot_po_2 == 0:
		$po2_label.text = ""
		$po2_enum.text = ""
	elif Manager.slot_po_2 == 1:
		$po2_label.text = "Demi potion mineure"
		$po2_enum.text = str(InventoryManager.po_demi_min)
	elif Manager.slot_po_2 == 2:
		$po2_label.text = "Potion mineure"
		$po2_enum.text = str(InventoryManager.po_min)
	elif Manager.slot_po_2 == 3:
		$po2_label.text = "Demi potion conséquente"
		$po2_enum.text = str(InventoryManager.po_demi_con)
	elif Manager.slot_po_2 == 4:
		$po2_label.text = "Potion conséquente"
		$po2_enum.text = str(InventoryManager.po_con)
	elif Manager.slot_po_2 == 5:
		$po2_label.text = "Demi super-potion"
		$po2_enum.text = str(InventoryManager.po_demi_sup)
	elif Manager.slot_po_2 == 6:
		$po2_label.text = "Super-potion"
		$po2_enum.text = str(InventoryManager.po_sup)
