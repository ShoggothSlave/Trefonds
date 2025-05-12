extends Node3D

func _on_area_3d_body_entered(_body: CharacterBody3D) -> void:
	$AnimationPlayer.play("declenchement")

func _on_killzone_body_entered(_body: CharacterBody3D) -> void:
	_body.blessure()
	Manager.Vie_Joueur -= 10 - Manager.armure - Manager.shield
	pass
