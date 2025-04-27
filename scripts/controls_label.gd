extends Label

func _input(_event):
	#manuel des controles
	if Input.is_action_just_pressed("controls") and self.visible == false:
		if $"../attributs_label".visible == true:
			$"../attributs_label".hide()
	elif Input.is_action_just_pressed("controls") and self.visible == true:
		self.hide()
