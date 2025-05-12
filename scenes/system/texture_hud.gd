extends TextureRect

func _process(_delta: float) -> void:
	if Manager.Vie_Joueur >= 20 and Manager.soif >= 20 and Manager.oxy >= 20 and Manager.faim >= 20:
		$element_warning.frame = 0
	elif Manager.Vie_Joueur < 20:
		$element_warning.frame = 1
	elif Manager.soif < 20:
		$element_warning.frame = 2
	elif Manager.oxy < 20:
		$element_warning.frame = 3
	elif Manager.faim < 20:
		$element_warning.frame = 4
	else:
		$element_warning.frame = 0
