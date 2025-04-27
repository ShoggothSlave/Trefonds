extends Sprite2D

func _process(_delta: float) -> void:
	if InventoryManager.po_demi_min == 0:
		self.frame = 0
		$Label.hide()
		$Label.text = "0"
		$Button.hide()
	elif InventoryManager.po_demi_min > 0:
		self.frame = 1
		$Label.show()
		$Label.text = str(InventoryManager.po_demi_min)
		$Button.show()

func _on_button_pressed() -> void:
	InventoryManager.po_demi_min -= 1
	Manager.Vie_Joueur += 10
	$"../../audio_boire2".play()

func _on_button_mouse_entered() -> void:
	$Label2.show()

func _on_button_mouse_exited() -> void:
	$Label2.hide()
