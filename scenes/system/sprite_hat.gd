extends Sprite2D

func _on_body_hat_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler.show()
	$hat_label.show()
	if Manager.hat == 0:
		$hat_label.text = ""
	if Manager.hat == 1:
		$hat_label.text = "Casque de cuir"

func _on_body_hat_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler.hide()
	$hat_label.hide()
	$hat_label.text = ""

func _on_defiler_g_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_g/coll_hat_g/button_g.show()
	$defiler.frame = 1

func _on_defiler_g_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_g/coll_hat_g/button_g.hide()
	$defiler.frame = 0

func _on_button_g_pressed() -> void:
	if Manager.hat == 1 and Manager.casquecuir == true:
		Manager.hat -= 1
		Manager.armure = Manager.armure - 0.2

func _on_defiler_d_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_d/coll_hat_d/button_d.show()
	$defiler.frame = 2

func _on_defiler_d_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_d/coll_hat_d/button_d.hide()
	$defiler.frame = 0

func _on_button_d_pressed() -> void:
	if Manager.hat == 0 and Manager.casquecuir == true:
		Manager.hat += 1
		Manager.armure = Manager.armure + 0.2
