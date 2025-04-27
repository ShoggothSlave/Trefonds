extends Node3D

func _ready() -> void:
	$AnimationPlayer.play("water_sound")

func _on_area_3d_body_entered(_body: Node3D) -> void:
	Manager.inwater = true
	Manager.soif = Manager.maxsoif
	$AnimationPlayer2.play("subwater_sound")

func _on_area_3d_body_exited(_body: Node3D) -> void:
	Manager.inwater = false
	$AnimationPlayer2.play("RESET")
