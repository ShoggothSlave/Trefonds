extends Node3D

func _lire():
	$CanvasLayer.show()

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("PageSuivante") and $CanvasLayer.visible == true:
		$CanvasLayer.hide()
