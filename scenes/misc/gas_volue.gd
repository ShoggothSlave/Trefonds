extends CSGBox3D

func _on_area_3d_body_entered(_body: Node3D) -> void:
	Manager.ingas = true

func _on_area_3d_body_exited(_body: Node3D) -> void:
	Manager.ingas = false
