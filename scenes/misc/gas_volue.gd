extends CSGBox3D

func _on_area_3d_body_entered(_body: Node3D) -> void:
	if _body.is_in_group("player"):
		Manager.ingas = true

func _on_area_3d_body_exited(_body: Node3D) -> void:
	if _body.is_in_group("player"):
		Manager.ingas = false
