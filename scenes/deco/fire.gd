extends Node3D

var fireing = false
var logg = false
var mouss = false
var viande = false

func _on_killzone_body_entered(_body: Node3D) -> void:
	_body.blessure()
	Manager.Vie_Joueur -= 10 - Manager.armure - Manager.shield
	pass

func _on_cookingzone_body_entered(_body: Node3D) -> void:
	if fireing == false and $buches.visible == false:
		if Manager.buche > 3:
			Manager.buche = Manager.buche - 3
			logg = true
		if Manager.moss > 1 and $moss.visible == false:
			Manager.moss = Manager.moss - 1
			mouss = true
		if logg == true and mouss == true:
			if Manager.flint == 2:
				$AudioStreamPlayer.play()
				$AnimationPlayer.play("animfire")
				$Firelife.start()
				fireing = true
	if fireing == true:
		if Manager.raw_meat > 1:
			Manager.cooking_meat = Manager.raw_meat
			$TimerCook.start()
			$AnimationPlayer.play("cooking")
			$Timermeat.start()

func _on_timer_cook_timeout() -> void:
	$AnimationPlayer.play("animfire")
	Manager.fried_meat = Manager.cooking_meat
	$Timertakemeat.start()

func _on_firelife_timeout() -> void:
	$AnimationPlayer.play("shuttedfire")
	logg = false
	mouss = false

func _on_timertakemeat_timeout() -> void:
	Manager.raw_meat = 0
	$Firelife.start()

func _process(_delta: float) -> void:
	if logg == true:
		$buches.show()
	if mouss == true:
		$moss.show()
	if viande == true:
		$viande.show()

func _on_timermeat_timeout() -> void:
	Manager.raw_meat = 0
