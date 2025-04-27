extends Node3D

func _on_detect_body_area_shape_entered(_area_rid: RID, _area: Area3D, _area_shape_index: int, _local_shape_index: int) -> void:
	$audio_body.play()
