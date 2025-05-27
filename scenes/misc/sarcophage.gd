extends Node3D

func _ouvrir():
	$AnimationPlayer.play("ouvrir")
	self.remove_from_group("ouvrable")
	$sarco_couvercle/Sarcophage.remove_from_group("ouvrable")
	$sarco_couvercle/Sarcophage/Sarcophage.remove_from_group("ouvrable")
