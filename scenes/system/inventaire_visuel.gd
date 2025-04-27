extends Node2D

@onready var invent = $Control/canva_inventaire
@onready var animinv = $anim_inv

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("inventaire"):
		if invent.visible == false:
			animinv.play("ouvrir_inv")
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		elif invent.visible == true:
			animinv.play("fermer_inv")
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(_delta: float) -> void:
	$Control/canva_inventaire/texture_inventaire/sprite_friedmeat.frame = int(InventoryManager.fried_meat)
	$Control/canva_inventaire/texture_inventaire/sprite_myrtilles.frame = int(InventoryManager.mirtilles)
	$Control/canva_inventaire/texture_inventaire/sprite_bandage.frame = int(InventoryManager.bandage)
	$Control/canva_inventaire/texture_inventaire/sprite_gourde.frame = int(InventoryManager.gourde)
	$Control/canva_inventaire/texture_inventaire/sprite_flint.frame = int(InventoryManager.flint)
	$Control/canva_inventaire/texture_inventaire/sprite_moss.frame = int(InventoryManager.mousse)
	$Control/canva_inventaire/texture_inventaire/sprite_baies_noires.frame = int(InventoryManager.belladone)
	$Control/canva_inventaire/texture_inventaire/sprite_champi_i.frame = int(InventoryManager.champ1)
	$Control/canva_inventaire/texture_inventaire/sprite_champi_2.frame = int(InventoryManager.champ2)
	$Control/canva_inventaire/texture_inventaire/sprite_buche.frame = int(InventoryManager.buche)
	$Control/canva_inventaire/texture_inventaire/sprite_champi_v_i.frame = int(InventoryManager.champv1)
	$Control/canva_inventaire/texture_inventaire/sprite_champi_v_ii.frame = int(InventoryManager.champv2)
	$Control/canva_inventaire/texture_inventaire/sprite_oignon.frame = int(InventoryManager.oignon)
	$Control/canva_inventaire/texture_inventaire/sprite_flint.frame = int(InventoryManager.flint)
	if InventoryManager.assiette == true:
		$Control/canva_inventaire/texture_inventaire/assiette.show()
	if InventoryManager.mortier == true:
		$Control/canva_inventaire/texture_inventaire/mortierback.show()
		$Control/canva_inventaire/texture_inventaire/mortierfront.show()
	if InventoryManager.chaudron == true:
		$Control/canva_inventaire/texture_inventaire/chaudronback.show()
		$Control/canva_inventaire/texture_inventaire/chaudronfront.show()
	if InventoryManager.planche == true:
		$Control/canva_inventaire/texture_inventaire/planche.show()
	if InventoryManager.jarre == true:
		$Control/canva_inventaire/texture_inventaire/jarre.show()
	if InventoryManager.bouteille == true:
		$Control/canva_inventaire/texture_inventaire/bouteille.show()
	if InventoryManager.bol == true:
		$Control/canva_inventaire/texture_inventaire/bol.show()
	if Manager.knife == true:
		$Control/canva_inventaire/texture_inventaire/sprite_knife_inv.show()
	if Manager.knife == false:
		$Control/canva_inventaire/texture_inventaire/sprite_knife_inv.hide()
	if Manager.sword == true:
		$Control/canva_inventaire/texture_inventaire/sprite_sword_inv.show()
	if Manager.sword == false:
		$Control/canva_inventaire/texture_inventaire/sprite_sword_inv.hide()
	if Manager.stick == true:
		$Control/canva_inventaire/texture_inventaire/sprite_stick_inv.show()
	if Manager.stick == false:
		$Control/canva_inventaire/texture_inventaire/sprite_stick_inv.hide()
	if Manager.rondache == true:
		$Control/canva_inventaire/texture_inventaire/sprite_rondache_inv.show()
	if Manager.rondache == false:
		$Control/canva_inventaire/texture_inventaire/sprite_rondache_inv.hide()
	if Manager.rustykey == true:
		$Control/canva_inventaire/texture_inventaire/sprite_porte_clefs/sprite_rk.show()
	if Manager.rustykey == false:
		$Control/canva_inventaire/texture_inventaire/sprite_porte_clefs/sprite_rk.hide()
	if Manager.bronzekey == true:
		$Control/canva_inventaire/texture_inventaire/sprite_porte_clefs/sprite_bk.show()
	if Manager.bronzekey == false:
		$Control/canva_inventaire/texture_inventaire/sprite_porte_clefs/sprite_bk.hide()
	if Manager.silverkey == true:
		$Control/canva_inventaire/texture_inventaire/sprite_porte_clefs/sprite_sk.show()
	if Manager.silverkey == false:
		$Control/canva_inventaire/texture_inventaire/sprite_porte_clefs/sprite_sk.hide()
