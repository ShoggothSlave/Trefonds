extends OmniLight3D

func _input(_event):
		#lanterne
	if Input.is_action_just_pressed("light") and self.visible == false:
		self.show()
	elif Input.is_action_just_pressed("light") and self.visible == true:
		self.hide()
