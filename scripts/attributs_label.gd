extends Label

func _input(_event):
#feuille personnage
	if Input.is_action_just_pressed("attributs") and self.visible == false:
		self.show()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	elif Input.is_action_just_pressed("attributs") and self.visible == true:
		self.hide()
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(_delta: float) -> void:
	#Gestion d'attributs
	$lvl_label.text = str(Manager.lvl)
	$pv_label.text = str(Manager.Vie_Joueur)
	$pv_max_label.text = str(Manager.maxlife)
	$xp_label.text = str(Manager.xp)
	$xp_max_label.text = str(Manager.maxxp)
	$armure_label.text = str(Manager.armure * 10)
	$force_label.text = str(Manager.force * 10)

	$sprite_hat.frame = Manager.hat
	$sprite_weapon.frame = Manager.arme_en_main
	$sprite_shield.frame = Manager.shield_en_main
	$sprite_amulet.frame = Manager.equip_amulet
	$sprite_ring_1.frame = Manager.equip_ring_1
	$sprite_ring_2.frame = Manager.equip_ring_2
	$sprite_torso.frame = Manager.torso
	$sprite_pants.frame = Manager.pants
	$sprite_boots.frame = Manager.boots
	$sprite_ceinture.frame = Manager.ceinture
	$sprite_po_1.frame = Manager.slot_po_1
	$sprite_po_2.frame = Manager.slot_po_2
	$sprite_po_3.frame = Manager.slot_po_3
