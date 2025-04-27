extends Node3D

func _on_area_3d_body_entered(_body: CharacterBody3D) -> void:
	Manager.laddering = true

func _on_area_3d_body_exited(_body: CharacterBody3D) -> void:
	Manager.laddering = false
