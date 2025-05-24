extends Node3D

func _lire():
	$AudioStreamPlayer.play()
	$CanvasLayer.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("PageSuivante") and $CanvasLayer.visible == true:
		if $CanvasLayer/Sprite2D/RichTextLabel.visible == true:
			$CanvasLayer/Sprite2D/RichTextLabel.hide()
			$CanvasLayer/Sprite2D/RichTextLabel2.hide()
			$AudioStreamPlayer.play()
			$timer_page.start()
		if $CanvasLayer/Sprite2D/RichTextLabel3.visible == true:
			$CanvasLayer.hide()
			$AudioStreamPlayer.play()
			$Timer.start()
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _on_timer_timeout() -> void:
	queue_free()

func _on_timer_page_timeout() -> void:
	$CanvasLayer/Sprite2D/RichTextLabel3.show()
	$CanvasLayer/Sprite2D/RichTextLabel4.show()
