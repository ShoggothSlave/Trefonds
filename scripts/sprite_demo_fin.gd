extends Sprite2D

func _process(_delta: float) -> void:
	if Manager.fin == true:
		self.show()
	if Manager.fin == true and Input.is_anything_pressed():
		get_tree().quit()
