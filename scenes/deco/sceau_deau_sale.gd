extends Node3D

func _prendre():
	Manager.soif = Manager.maxsoif
	$AudioStreamPlayer.play()
	$Timer.start()

func _on_timer_timeout() -> void:
	$audio_ouch.play()
	Manager.Vie_Joueur = Manager.Vie_Joueur -10
	Manager.faim = Manager.faim -10
