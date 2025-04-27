extends Sprite2D

func _on_body_weapon_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler.show()
	$weapon_label.show()

func _on_body_weapon_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler.hide()
	$weapon_label.hide()

func _on_defiler_g_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_g/coll_weap_g/button_g.show()
	$defiler.frame = 1

func _on_defiler_g_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_g/coll_weap_g/button_g.hide()
	$defiler.frame = 0

func _on_button_g_pressed() -> void:
	if Manager.arme_en_main == 3:
		if Manager.sword == true:
			Manager.arme_en_main = 2
			Manager.shield_en_main = 0
		elif Manager.knife == true:
			Manager.arme_en_main = 1
		else: Manager.arme_en_main = 0
	elif Manager.arme_en_main == 2:
		if Manager.knife == true:
			Manager.arme_en_main = 1
		else: Manager.arme_en_main = 0
	else:
		Manager.arme_en_main = 0
		self.frame = 0
		Manager.weapon_type = 0
		$"../../player/head_original_position/player_head/player_camera/player_raycast".target_position.y = -0.5
		$"../../canvas_hud/control_fight/sprite_fist".show()
		$"../../canvas_hud/control_fight/texture_hud/sprite_fist_hud".show()
		$"../../canvas_hud/control_fight/sprite_knife".hide()
		$"../../canvas_hud/control_fight/texture_hud/sprite_knife_hud".hide()

func _on_defiler_d_mouse_shape_entered(_shape_idx: int) -> void:
	$defiler_d/coll_weap_d/button_d.show()
	$defiler.frame = 2

func _on_defiler_d_mouse_shape_exited(_shape_idx: int) -> void:
	$defiler_d/coll_weap_d/button_d.hide()
	$defiler.frame = 0

func _on_button_d_pressed() -> void:
	if Manager.arme_en_main == 0:
		if Manager.knife == true:
			Manager.arme_en_main = 1
		elif Manager.sword == true:
			Manager.arme_en_main = 2
		elif Manager.stick == true:
			Manager.arme_en_main = 3
			Manager.shield_en_main = 1
	elif Manager.arme_en_main == 1:
		if Manager.sword == true:
			Manager.arme_en_main = 2
		elif Manager.stick == true:
			Manager.arme_en_main = 3
			Manager.shield_en_main = 1
	elif Manager.arme_en_main == 2 and Manager.stick == true:
		Manager.arme_en_main = 3
		Manager.shield_en_main = 1

func _process(_delta: float) -> void:
	if Manager.arme_en_main == 0:
		$weapon_label.text = "Mains nues"
	elif Manager.arme_en_main == 1:
		$weapon_label.text = "Couteau de chasse"
	elif Manager.arme_en_main == 2:
		$weapon_label.text = "Épée rouillée"
	elif Manager.arme_en_main == 3:
		$weapon_label.text = "Bâton de combat"
