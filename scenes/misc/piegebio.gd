extends Node3D

func _on_area_3d_body_entered(_body: Node3D):
	$Timer.start()
	$AnimationPlayer.play("declenchement")

func _on_timer_timeout() -> void:
	$AnimationPlayer.play("rearmement")

func _on_killzone_body_entered(_body : Node3D) -> void:
	_body.blessure()
	Manager.Vie_Joueur -= 25.0 - Manager.armure - Manager.shield
	pass
