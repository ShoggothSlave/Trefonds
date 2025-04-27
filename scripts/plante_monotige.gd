extends Node3D

func _on_body_detection_body_entered(_body: Node3D) -> void:
	$audio_foliage.play()
