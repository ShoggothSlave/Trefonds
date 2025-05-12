extends CanvasLayer

func _input(_event):
#HUD
	if Input.is_action_just_pressed("hud") and $control_fight/texture_hud.visible == true:
		$control_fight/texture_hud.hide()
	elif Input.is_action_just_pressed("hud") and $control_fight/texture_hud.visible == false:
		$control_fight/texture_hud.show()

func _process(_delta: float) -> void:
	#block
	if Manager.shield_en_main == 1:
		if Input.is_action_pressed("block") and Manager.arme_en_main == 3:
			$anim_block.play("stick_block")
			Manager.shield += 5
		if Input.is_action_just_released("block") and Manager.arme_en_main == 3:
			$anim_block.play("stick_deblock")
			Manager.shield -= 5
		if Input.is_action_pressed("block") and Manager.shield_en_main == 2:
			$anim_block.play("rondache_block")
			Manager.shield += 10
	if Input.is_action_just_released("block") and Manager.shield_en_main == 2:
		$anim_block.play("rondache_deblock")
		Manager.shield -= 10
	if Input.is_action_pressed("block") and Manager.shield_en_main == 2:
		$anim_block.play("rondache_block")
		Manager.shield += 10
	if Input.is_action_just_released("block") and Manager.shield_en_main == 2:
		$anim_block.play("rondache_deblock")
		Manager.shield -= 10
	if Input.is_action_pressed("block") and Manager.shield_en_main == 2:
		$anim_block.play("rondache_block")
		Manager.shield += 10
	if Input.is_action_just_released("block") and Manager.shield_en_main == 2:
		$anim_block.play("rondache_deblock")
		Manager.shield -= 10

#warnings
	if Manager.Vie_Joueur < 25.0:
		$warning_life.frame = 1
	else:
		$warning_life.frame = 0
	if Manager.soif < 25.0:
		$warning_soif.frame = 1
	else:
		$warning_soif.frame = 0
	if Manager.oxy < 25.0:
		$warning_oxy.frame = 1
	else:
		$warning_oxy.frame = 0
	if Manager.faim < 25.0:
		$warning_faim.frame = 1
	else:
		$warning_faim.frame = 0
