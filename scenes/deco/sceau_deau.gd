extends Node3D

func _prendre():
	Manager.soif = Manager.maxsoif
	$AudioStreamPlayer.play()
