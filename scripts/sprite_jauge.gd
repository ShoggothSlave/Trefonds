extends Sprite2D

func _input(_event: InputEvent) -> void:
#Access_po
	if Input.is_action_just_pressed("po1"):
		$"../../audio_boire".play()
		if $"../access_po1".frame == 1:
			InventoryManager.po_demi_min -= 1
			Manager.Vie_Joueur += 10
		elif $"../access_po1".frame == 2:
			InventoryManager.po_min -= 1
			Manager.Vie_Joueur += 20
		elif $"../access_po1".frame == 3:
			InventoryManager.po_demi_con -= 1
			Manager.Vie_Joueur += 25
		elif $"../access_po1".frame == 4:
			InventoryManager.po_con -= 1
			Manager.Vie_Joueur += 50
		elif $"../access_po1".frame == 5:
			InventoryManager.po_demi_sup -= 1
			Manager.Vie_Joueur += 75
		elif $"../access_po1".frame == 6:
			InventoryManager.po_sup -= 1
			Manager.Vie_Joueur += 100
	if Input.is_action_just_pressed("po2"):
		$"../../audio_boire".play()
		if $"../access_po2".frame == 1:
			InventoryManager.po_demi_min -= 1
			Manager.Vie_Joueur += 10
		elif $"../access_po2".frame == 2:
			InventoryManager.po_min -= 1
			Manager.Vie_Joueur += 20
		elif $"../access_po2".frame == 3:
			InventoryManager.po_demi_con -= 1
			Manager.Vie_Joueur += 25
		elif $"../access_po2".frame == 4:
			InventoryManager.po_con -= 1
			Manager.Vie_Joueur += 50
		elif $"../access_po2".frame == 5:
			InventoryManager.po_demi_sup -= 1
			Manager.Vie_Joueur += 75
		elif $"../access_po2".frame == 6:
			InventoryManager.po_sup -= 1
			Manager.Vie_Joueur += 100
	if Input.is_action_just_pressed("po3"):
		$"../../audio_boire".play()
		if $"../access_po3".frame == 1:
			InventoryManager.po_demi_min -= 1
			Manager.Vie_Joueur += 10
		elif $"../access_po3".frame == 2:
			InventoryManager.po_min -= 1
			Manager.Vie_Joueur += 20
		elif $"../access_po3".frame == 3:
			InventoryManager.po_demi_con -= 1
			Manager.Vie_Joueur += 25
		elif $"../access_po3".frame == 4:
			InventoryManager.po_con -= 1
			Manager.Vie_Joueur += 50
		elif $"../access_po3".frame == 5:
			InventoryManager.po_demi_sup -= 1
			Manager.Vie_Joueur += 75
		elif $"../access_po3".frame == 6:
			InventoryManager.po_sup -= 1
			Manager.Vie_Joueur += 100

func _process(_delta: float) -> void:

#gestion access po
	if Manager.ceinture == 0:
		$"../access_po1".hide()
		$"../access_po1/Label".text = ""
		$"../access_po2".hide()
		$"../access_po2/Label".text = ""
		$"../access_po3".hide()
		$"../access_po3/Label".text = ""
	if Manager.ceinture == 1:
		$"../access_po1".show()
		$"../access_po1".frame = Manager.slot_po_1
		if  $"../access_po1".frame == 0:
			$"../access_po1/Label".text = ""
		elif $"../access_po1".frame == 1:
			$"../access_po1/Label".text = str(InventoryManager.po_demi_min)
		elif $"../access_po1".frame == 2:
			$"../access_po1/Label".text = str(InventoryManager.po_min)
		elif $"../access_po1".frame == 3:
			$"../access_po1/Label".text = str(InventoryManager.po_demi_con)
		elif $"../access_po1".frame == 4:
			$"../access_po1/Label".text = str(InventoryManager.po_con)
		elif $"../access_po1".frame == 5:
			$"../access_po1/Label".text = str(InventoryManager.po_demi_sup)
		elif $"../access_po1".frame == 6:
			$"../access_po1/Label".text = str(InventoryManager.po_sup)
		$"../access_po2".hide()
		$"../access_po3".hide()
	if Manager.ceinture == 2:
		$"../access_po1".show()
		$"../access_po1".frame = Manager.slot_po_1
		if  $"../access_po1".frame == 0:
			$"../access_po1/Label".text = ""
		elif $"../access_po1".frame == 1:
			$"../access_po1/Label".text = str(InventoryManager.po_demi_min)
		elif $"../access_po1".frame == 2:
			$"../access_po1/Label".text = str(InventoryManager.po_min)
		elif $"../access_po1".frame == 3:
			$"../access_po1/Label".text = str(InventoryManager.po_demi_con)
		elif $"../access_po1".frame == 4:
			$"../access_po1/Label".text = str(InventoryManager.po_con)
		elif $"../access_po1".frame == 5:
			$"../access_po1/Label".text = str(InventoryManager.po_demi_sup)
		elif $"../access_po1".frame == 6:
			$"../access_po1/Label".text = str(InventoryManager.po_sup)
		$"../access_po2".show()
		$"../access_po2".frame = Manager.slot_po_2
		if  $"../access_po2".frame == 0:
			$"../access_po2/Label".text = ""
		elif $"../access_po2".frame == 1:
			$"../access_po2/Label".text = str(InventoryManager.po_demi_min)
		elif $"../access_po2".frame == 2:
			$"../access_po2/Label".text = str(InventoryManager.po_min)
		elif $"../access_po2".frame == 3:
			$"../access_po2/Label".text = str(InventoryManager.po_demi_con)
		elif $"../access_po2".frame == 4:
			$"../access_po2/Label".text = str(InventoryManager.po_con)
		elif $"../access_po2".frame == 5:
			$"../access_po2/Label".text = str(InventoryManager.po_demi_sup)
		elif $"../access_po2".frame == 6:
			$"../access_po2/Label".text = str(InventoryManager.po_sup)
		$"../access_po3".hide()
	if Manager.ceinture == 3:
		$"../access_po1".show()
		$"../access_po1".frame = Manager.slot_po_1
		if  $"../access_po1".frame == 0:
			$"../access_po1/Label".text = ""
		elif $"../access_po1".frame == 1:
			$"../access_po1/Label".text = str(InventoryManager.po_demi_min)
		elif $"../access_po1".frame == 2:
			$"../access_po1/Label".text = str(InventoryManager.po_min)
		elif $"../access_po1".frame == 3:
			$"../access_po1/Label".text = str(InventoryManager.po_demi_con)
		elif $"../access_po1".frame == 4:
			$"../access_po1/Label".text = str(InventoryManager.po_con)
		elif $"../access_po1".frame == 5:
			$"../access_po1/Label".text = str(InventoryManager.po_demi_sup)
		elif $"../access_po1".frame == 6:
			$"../access_po1/Label".text = str(InventoryManager.po_sup)
		$"../access_po2".show()
		$"../access_po2".frame = Manager.slot_po_2
		if  $"../access_po2".frame == 0:
			$"../access_po2/Label".text = ""
		elif $"../access_po2".frame == 1:
			$"../access_po2/Label".text = str(InventoryManager.po_demi_min)
		elif $"../access_po2".frame == 2:
			$"../access_po2/Label".text = str(InventoryManager.po_min)
		elif $"../access_po2".frame == 3:
			$"../access_po2/Label".text = str(InventoryManager.po_demi_con)
		elif $"../access_po2".frame == 4:
			$"../access_po2/Label".text = str(InventoryManager.po_con)
		elif $"../access_po2".frame == 5:
			$"../access_po2/Label".text = str(InventoryManager.po_demi_sup)
		elif $"../access_po2".frame == 6:
			$"../access_po2/Label".text = str(InventoryManager.po_sup)
		$"../access_po3".show()
		$"../access_po3".frame = Manager.slot_po_3
		if  $"../access_po3".frame == 0:
			$"../access_po3/Label".text = ""
		elif $"../access_po3".frame == 1:
			$"../access_po3/Label".text = str(InventoryManager.po_demi_min)
		elif $"../access_po3".frame == 2:
			$"../access_po3/Label".text = str(InventoryManager.po_min)
		elif $"../access_po3".frame == 3:
			$"../access_po3/Label".text = str(InventoryManager.po_demi_con)
		elif $"../access_po3".frame == 4:
			$"../access_po3/Label".text = str(InventoryManager.po_con)
		elif $"../access_po3".frame == 5:
			$"../access_po3/Label".text = str(InventoryManager.po_demi_sup)
		elif $"../access_po3".frame == 6:
			$"../access_po3/Label".text = str(InventoryManager.po_sup)

#Gestion de jauge de vie (feu)
	if Manager.Vie_Joueur >= Manager.maxlife * 0.95:
		$"../sprite_jeuge_feu".frame = 0
	if Manager.Vie_Joueur >= Manager.maxlife * 0.9 and Manager.Vie_Joueur < Manager.maxlife * 1:
		$"../sprite_jeuge_feu".frame = 1
	if Manager.Vie_Joueur >= Manager.maxlife * 0.8 and Manager.Vie_Joueur < Manager.maxlife * 0.85:
		$"../sprite_jeuge_feu".frame = 2
	if Manager.Vie_Joueur >= Manager.maxlife * 0.75 and Manager.Vie_Joueur < Manager.maxlife * 0.8:
		$"../sprite_jeuge_feu".frame = 3
	if Manager.Vie_Joueur >= Manager.maxlife * 0.7 and Manager.Vie_Joueur < Manager.maxlife * 0.75:
		$"../sprite_jeuge_feu".frame = 4
	if Manager.Vie_Joueur >= Manager.maxlife * 0.65 and Manager.Vie_Joueur < Manager.maxlife * 0.7:
		$"../sprite_jeuge_feu".frame = 5
	if Manager.Vie_Joueur >= Manager.maxlife * 0.6 and Manager.Vie_Joueur < Manager.maxlife * 0.65:
		$"../sprite_jeuge_feu".frame = 6
	if Manager.Vie_Joueur >= Manager.maxlife * 0.55 and Manager.Vie_Joueur < Manager.maxlife * 0.6:
		$"../sprite_jeuge_feu".frame = 7
	if Manager.Vie_Joueur >= Manager.maxlife * 0.5 and Manager.Vie_Joueur < Manager.maxlife * 0.55:
		$"../sprite_jeuge_feu".frame = 8
	if Manager.Vie_Joueur >= Manager.maxlife * 0.45 and Manager.Vie_Joueur < Manager.maxlife * 0.4:
		$"../sprite_jeuge_feu".frame = 9
	if Manager.Vie_Joueur >= Manager.maxlife * 0.4 and Manager.Vie_Joueur < Manager.maxlife * 0.45:
		$"../sprite_jeuge_feu".frame = 10
	if Manager.Vie_Joueur >= Manager.maxlife * 0.35 and Manager.Vie_Joueur < Manager.maxlife * 0.4:
		$"../sprite_jeuge_feu".frame = 11
	if Manager.Vie_Joueur >= Manager.maxlife * 0.3 and Manager.Vie_Joueur < Manager.maxlife * 0.35:
		$"../sprite_jeuge_feu".frame = 12
	if Manager.Vie_Joueur >= Manager.maxlife * 0.25 and Manager.Vie_Joueur < Manager.maxlife * 0.3:
		$"../sprite_jeuge_feu".frame = 13
	if Manager.Vie_Joueur >= Manager.maxlife * 0.2 and Manager.Vie_Joueur < Manager.maxlife * 0.25:
		$"../sprite_jeuge_feu".frame = 14
	if Manager.Vie_Joueur >= Manager.maxlife * 0.15 and Manager.Vie_Joueur < Manager.maxlife * 0.2:
		$"../sprite_jeuge_feu".frame = 15
	if Manager.Vie_Joueur >= Manager.maxlife * 0.1 and Manager.Vie_Joueur < Manager.maxlife * 0.15:
		$"../sprite_jeuge_feu".frame = 16
	if Manager.Vie_Joueur >= Manager.maxlife * 0.05 and Manager.Vie_Joueur < Manager.maxlife * 0.1:
		$"../sprite_jeuge_feu".frame = 17
	if Manager.Vie_Joueur >= Manager.maxlife * 0 and Manager.Vie_Joueur < Manager.maxlife * 0.05:
		$"../sprite_jeuge_feu".frame = 18
	if Manager.Vie_Joueur >= Manager.maxlife * 0 and Manager.Vie_Joueur < Manager.maxlife * 0.01:
		$"../sprite_jeuge_feu".frame = 19
	if Manager.Vie_Joueur <= 0.0:
		Manager.dead = true

#gestion oxygen
	if Manager.oxy >= Manager.maxoxy * 0.95:
		$"../sprite_jeuge_air".frame = 0
	if Manager.oxy >= Manager.maxoxy * 0.9 and Manager.oxy < Manager.maxoxy * 1:
		$"../sprite_jeuge_air".frame = 1
	if Manager.oxy >= Manager.maxoxy * 0.8 and Manager.oxy < Manager.maxoxy * 0.85:
		$"../sprite_jeuge_air".frame = 2
	if Manager.oxy >= Manager.maxoxy * 0.75 and Manager.oxy < Manager.maxoxy * 0.8:
		$"../sprite_jeuge_air".frame = 3
	if Manager.oxy >= Manager.maxoxy * 0.7 and Manager.oxy < Manager.maxoxy * 0.75:
		$"../sprite_jeuge_air".frame = 4
	if Manager.oxy >= Manager.maxoxy * 0.65 and Manager.oxy < Manager.maxoxy * 0.7:
		$"../sprite_jeuge_air".frame = 5
	if Manager.oxy >= Manager.maxoxy * 0.6 and Manager.oxy < Manager.maxoxy * 0.65:
		$"../sprite_jeuge_air".frame = 6
	if Manager.oxy >= Manager.maxoxy * 0.55 and Manager.oxy < Manager.maxoxy * 0.6:
		$"../sprite_jeuge_air".frame = 7
	if Manager.oxy >= Manager.maxoxy * 0.5 and Manager.oxy < Manager.maxoxy * 0.55:
		$"../sprite_jeuge_air".frame = 8
	if Manager.oxy >= Manager.maxoxy * 0.45 and Manager.oxy < Manager.maxoxy * 0.4:
		$"../sprite_jeuge_air".frame = 9
	if Manager.oxy >= Manager.maxoxy * 0.4 and Manager.oxy < Manager.maxoxy * 0.45:
		$"../sprite_jeuge_air".frame = 10
	if Manager.oxy >= Manager.maxoxy * 0.35 and Manager.oxy < Manager.maxoxy * 0.4:
		$"../sprite_jeuge_air".frame = 11
	if Manager.oxy >= Manager.maxoxy * 0.3 and Manager.oxy < Manager.maxoxy * 0.35:
		$"../sprite_jeuge_air".frame = 12
	if Manager.oxy >= Manager.maxoxy * 0.25 and Manager.oxy < Manager.maxoxy * 0.3:
		$"../sprite_jeuge_air".frame = 13
	if Manager.oxy >= Manager.maxoxy * 0.2 and Manager.oxy < Manager.maxoxy * 0.25:
		$"../sprite_jeuge_air".frame = 14
	if Manager.oxy >= Manager.maxoxy * 0.15 and Manager.oxy < Manager.maxoxy * 0.2:
		$"../sprite_jeuge_air".frame = 15
	if Manager.oxy >= Manager.maxoxy * 0.1 and Manager.oxy < Manager.maxoxy * 0.15:
		$"../sprite_jeuge_air".frame = 16
	if Manager.oxy >= Manager.maxoxy * 0.05 and Manager.oxy < Manager.maxoxy * 0.1:
		$"../sprite_jeuge_air".frame = 17
	if Manager.oxy >= Manager.maxoxy * 0 and Manager.oxy < Manager.maxoxy * 0.05:
		$"../sprite_jeuge_air".frame = 18
	if Manager.oxy >= Manager.maxoxy * 0 and Manager.oxy < Manager.maxoxy * 0.01:
		$"../sprite_jeuge_air".frame = 19
	if Manager.oxy <= 0.0:
		Manager.dead = true

#Gestion soif
	if Manager.soif >= Manager.maxsoif * 0.95:
		$"../sprite_jeuge_eau".frame = 4
	if Manager.soif >= Manager.maxsoif * 0.9 and Manager.soif < Manager.maxsoif * 1:
		$"../sprite_jeuge_eau".frame = 3
	if Manager.soif >= Manager.maxsoif * 0.8 and Manager.soif < Manager.maxsoif * 0.85:
		$"../sprite_jeuge_eau".frame = 2
	if Manager.soif >= Manager.maxsoif * 0.75 and Manager.soif < Manager.maxsoif * 0.8:
		$"../sprite_jeuge_eau".frame = 1
	if Manager.soif >= Manager.maxsoif * 0.7 and Manager.soif < Manager.maxsoif * 0.75:
		$"../sprite_jeuge_eau".frame = 0
	if Manager.soif >= Manager.maxsoif * 0.65 and Manager.soif < Manager.maxsoif * 0.7:
		$"../sprite_jeuge_eau".frame = 9
	if Manager.soif >= Manager.maxsoif * 0.6 and Manager.soif < Manager.maxsoif * 0.65:
		$"../sprite_jeuge_eau".frame = 8
	if Manager.soif >= Manager.maxsoif * 0.55 and Manager.soif < Manager.maxsoif * 0.6:
		$"../sprite_jeuge_eau".frame = 7
	if Manager.soif >= Manager.maxsoif * 0.5 and Manager.soif < Manager.maxsoif * 0.55:
		$"../sprite_jeuge_eau".frame = 6
	if Manager.soif >= Manager.maxsoif * 0.45 and Manager.soif < Manager.maxsoif * 0.4:
		$"../sprite_jeuge_eau".frame = 5
	if Manager.soif >= Manager.maxsoif * 0.4 and Manager.soif < Manager.maxsoif * 0.45:
		$"../sprite_jeuge_eau".frame = 14
	if Manager.soif >= Manager.maxsoif * 0.35 and Manager.soif < Manager.maxsoif * 0.4:
		$"../sprite_jeuge_eau".frame = 13
	if Manager.soif >= Manager.maxsoif * 0.3 and Manager.soif < Manager.maxsoif * 0.35:
		$"../sprite_jeuge_eau".frame = 12
	if Manager.soif >= Manager.maxsoif * 0.25 and Manager.soif < Manager.maxsoif * 0.3:
		$"../sprite_jeuge_eau".frame = 11
	if Manager.soif >= Manager.maxsoif * 0.2 and Manager.soif < Manager.maxsoif * 0.25:
		$"../sprite_jeuge_eau".frame = 10
	if Manager.soif >= Manager.maxsoif * 0.15 and Manager.soif < Manager.maxsoif * 0.2:
		$"../sprite_jeuge_eau".frame = 19
	if Manager.soif >= Manager.maxsoif * 0.1 and Manager.soif < Manager.maxsoif * 0.15:
		$"../sprite_jeuge_eau".frame = 18
	if Manager.soif >= Manager.maxsoif * 0.05 and Manager.soif < Manager.maxsoif * 0.1:
		$"../sprite_jeuge_eau".frame = 17
	if Manager.soif >= Manager.maxsoif * 0 and Manager.soif < Manager.maxsoif * 0.05:
		$"../sprite_jeuge_eau".frame = 16
	if Manager.soif >= Manager.maxsoif * 0 and Manager.soif < Manager.maxsoif * 0.01:
		$"../sprite_jeuge_eau".frame = 15
	if Manager.soif <= 0.0:
		Manager.dead = true
	if Manager.soif > Manager.maxsoif:
		Manager.soif = Manager.maxsoif

#Gestion faim
	if Manager.faim >= Manager.maxfaim * 0.95:
		$"../sprite_jeuge_terre".frame = 0
	if Manager.faim >= Manager.maxfaim * 0.9 and Manager.faim < Manager.maxfaim * 1:
		$"../sprite_jeuge_terre".frame = 1
	if Manager.faim >= Manager.maxfaim * 0.8 and Manager.faim < Manager.maxfaim * 0.85:
		$"../sprite_jeuge_terre".frame = 2
	if Manager.faim >= Manager.maxfaim * 0.75 and Manager.faim < Manager.maxfaim * 0.8:
		$"../sprite_jeuge_terre".frame = 3
	if Manager.faim >= Manager.maxfaim * 0.7 and Manager.faim < Manager.maxfaim * 0.75:
		$"../sprite_jeuge_terre".frame = 4
	if Manager.faim >= Manager.maxfaim * 0.65 and Manager.faim < Manager.maxfaim * 0.7:
		$"../sprite_jeuge_terre".frame = 5
	if Manager.faim >= Manager.maxfaim * 0.6 and Manager.faim < Manager.maxfaim * 0.65:
		$"../sprite_jeuge_terre".frame = 6
	if Manager.faim >= Manager.maxfaim * 0.55 and Manager.faim < Manager.maxfaim * 0.6:
		$"../sprite_jeuge_terre".frame = 7
	if Manager.faim >= Manager.maxfaim * 0.5 and Manager.faim < Manager.maxfaim * 0.55:
		$"../sprite_jeuge_terre".frame = 8
	if Manager.faim >= Manager.maxfaim * 0.45 and Manager.faim < Manager.maxfaim * 0.4:
		$"../sprite_jeuge_terre".frame = 9
	if Manager.faim >= Manager.maxfaim * 0.4 and Manager.faim < Manager.maxfaim * 0.45:
		$"../sprite_jeuge_terre".frame = 10
	if Manager.faim >= Manager.maxfaim * 0.35 and Manager.faim < Manager.maxfaim * 0.4:
		$"../sprite_jeuge_terre".frame = 11
	if Manager.faim >= Manager.maxfaim * 0.3 and Manager.faim < Manager.maxfaim * 0.35:
		$"../sprite_jeuge_terre".frame = 12
	if Manager.faim >= Manager.maxfaim * 0.25 and Manager.faim < Manager.maxfaim * 0.3:
		$"../sprite_jeuge_terre".frame = 13
	if Manager.faim >= Manager.maxfaim * 0.2 and Manager.faim < Manager.maxfaim * 0.25:
		$"../sprite_jeuge_terre".frame = 14
	if Manager.faim >= Manager.maxfaim * 0.15 and Manager.faim < Manager.maxfaim * 0.2:
		$"../sprite_jeuge_terre".frame = 15
	if Manager.faim >= Manager.maxfaim * 0.1 and Manager.faim < Manager.maxfaim * 0.15:
		$"../sprite_jeuge_terre".frame = 16
	if Manager.faim >= Manager.maxfaim * 0.05 and Manager.faim < Manager.maxfaim * 0.1:
		$"../sprite_jeuge_terre".frame = 17
	if Manager.faim >= Manager.maxfaim * 0 and Manager.faim < Manager.maxfaim * 0.05:
		$"../sprite_jeuge_terre".frame = 18
	if Manager.faim >= Manager.maxfaim * 0 and Manager.faim < Manager.maxfaim * 0.01:
		$"../sprite_jeuge_terre".frame = 19
	if Manager.faim <= 0.0:
		Manager.dead = true
	if Manager.faim > Manager.maxfaim:
		Manager.faim = Manager.maxfaim
