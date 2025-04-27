extends Sprite2D

func _process(_delta: float) -> void:
	if InventoryManager.po_for == 0:
		self.frame = 0
		$Label.hide()
		$Label.text = ""
		$Button.hide()
	elif InventoryManager.po_for > 0:
		self.frame = 2
		$Label.show()
		$Label.text = str(InventoryManager.po_for)
		$Button.show()

func _on_button_pressed() -> void:
	InventoryManager.po_for -= 1
	Manager.force += 0.5
	$"../../audio_boire2".play()

func _on_button_mouse_entered() -> void:
	$Label2.show()

func _on_button_mouse_exited() -> void:
	$Label2.hide()
