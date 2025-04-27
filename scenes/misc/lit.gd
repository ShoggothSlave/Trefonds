extends Node3D

func _dormir():
	$anim_sleep.play("sleep")
	$anim_sleep/sleep_timer.start()
	$reposable.start()
	self.remove_from_group("repos")
	$Lit.remove_from_group("repos")
	$Lit/Lit.remove_from_group("repos")

func _on_sleep_timer_timeout() -> void:
	Manager.Vie_Joueur = Manager.maxlife

func _on_reposable_timeout() -> void:
	self.add_to_group("repos")
	$Lit.add_to_group("repos")
	$Lit/Lit.add_to_group("repos")
