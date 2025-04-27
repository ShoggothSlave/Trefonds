extends Sprite2D

func _on_body_belt_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler.show()
	$belt_label.show()

func _on_body_belt_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler.hide()
	$belt_label.hide()

func _on_defiler_g_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_g/coll_belt_g/button_g.show()
	$defiler.frame = 1

func _on_defiler_g_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_g/coll_belt_g/button_g.hide()
	$defiler.frame = 0

func _on_button_g_pressed() -> void:
	if Manager.ceinture == 3 and Manager.ceinture_double == true:
		Manager.ceinture -= 1
		$"../sprite_po_1".show()
		$"../sprite_po_2".show()
		$"../sprite_po_3".hide()
	elif Manager.ceinture == 2 and Manager.ceinture_simple == true:
		Manager.ceinture -= 1
		$"../sprite_po_1".show()
		$"../sprite_po_2".hide()
		$"../sprite_po_3".hide()
	elif Manager.ceinture == 1:
		Manager.ceinture -= 1
		$"../sprite_po_1".hide()
		$"../sprite_po_2".hide()
		$"../sprite_po_3".hide()

func _on_defiler_d_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_d/coll_belt_d/button_d.show()
	$defiler.frame = 2

func _on_defiler_d_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_d/coll_belt_d/button_d.hide()
	$defiler.frame = 0

func _on_button_d_pressed() -> void:
	if Manager.ceinture == 0 and Manager.ceinture_simple == true:
		Manager.ceinture += 1
		$"../sprite_po_1".show()
		$"../sprite_po_2".hide()
		$"../sprite_po_3".hide()
	elif Manager.ceinture == 1 and Manager.ceinture_double == true:
		Manager.ceinture += 1
		$"../sprite_po_1".show()
		$"../sprite_po_2".show()
		$"../sprite_po_3".hide()
	elif Manager.ceinture == 2 and Manager.ceinture_large == true:
		Manager.ceinture += 1
		$"../sprite_po_1".show()
		$"../sprite_po_2".show()
		$"../sprite_po_3".show()

func _process(_delta: float) -> void:
	if Manager.ceinture == 0:
		$belt_label.text = ""
	elif Manager.ceinture == 1:
		$belt_label.text = "Ceinture simple"
	elif Manager.ceinture == 2:
		$belt_label.text = "Ceinture double"
	elif Manager.ceinture == 3:
		$belt_label.text = "Ceinture large"
