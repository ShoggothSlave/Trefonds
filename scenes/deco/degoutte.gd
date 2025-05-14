extends Node3D

@onready var degoutte = true

func _process(_delta: float) -> void:
	if degoutte == true:
		$AnimationPlayer.play("degoutte")

func _on_area_3d_body_entered(_body: Node3D) -> void:
	$AudioStreamPlayer.play()
	Manager.soif = Manager.maxsoif
