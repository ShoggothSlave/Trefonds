extends RayCast3D

func _ready():
	$controler/texture_rect/anim_cursor.play("idle")
	$controler/texture_rect/interact_label.text = ""

func _physics_process(_delta):
	if is_colliding():
		var hit = get_collider()
		if hit.is_in_group("monstres"):
			pass
			$controler/texture_rect/anim_cursor.play("attak")
			$controler/texture_rect/interact_label.text = ""
		elif hit.is_in_group("prehensible"):
			$controler/texture_rect/anim_cursor.play("prend")
			$controler/texture_rect/interact_label.text = "Prendre " + hit.name
			if hit.get_parent().has_method("_prendre") and Input.is_action_just_pressed("interaction"):
				hit.get_parent()._prendre()
			if hit.get_parent().get_parent().has_method("_prendre") and Input.is_action_just_pressed("interaction"):
				hit.get_parent().get_parent()._prendre()
		elif hit.is_in_group("activable"):
			$controler/texture_rect/anim_cursor.play("action")
			$controler/texture_rect/interact_label.text = "Actionner " + hit.name
			if hit.has_method("_actionner") and Input.is_action_just_pressed("interaction"):
				hit._activer()
		elif hit.is_in_group("repos"):
			$controler/texture_rect/anim_cursor.play("dort")
			$controler/texture_rect/interact_label.text = "Se reposer"
			if hit.get_parent().get_parent().has_method("_dormir") and Input.is_action_just_pressed("interaction"):
				hit.get_parent().get_parent()._dormir()
		elif hit.is_in_group("inflammable"):
			$controler/texture_rect/anim_cursor.play("faisdufeu")
			$controler/texture_rect/interact_label.text = "Allumer"
			if hit.has_method("_fiering") and Input.is_action_just_pressed("interaction"):
				hit._fireing()
		elif hit.is_in_group("cuisinable"):
			$controler/texture_rect/anim_cursor.play("cuisine")
			$controler/texture_rect/interact_label.text = "Cuisiner"
			if hit.has_method("_cuisiner") and Input.is_action_just_pressed("interaction"):
				hit._cuisiner()
		elif hit.is_in_group("inspectable"):
			$controler/texture_rect/anim_cursor.play("inspect")
			$controler/texture_rect/interact_label.text = "Inspecter " + hit.name
			if hit.get_parent().get_parent().get_parent().has_method("_inspecter") and Input.is_action_just_pressed("interaction"):
				hit.get_parent().get_parent().get_parent()._inspecter()
		elif hit.is_in_group("fragile"):
			$controler/texture_rect/anim_cursor.play("demolis")
			$controler/texture_rect/interact_label.text = "Demolire " + hit.name
			if hit.has_method("_demolir") and Input.is_action_just_pressed("interaction"):
				hit._demolir()
		elif hit.is_in_group("lisible"):
			$controler/texture_rect/anim_cursor.play("lis")
			$controler/texture_rect/interact_label.text = "Lire " + hit.name
			if hit.get_parent().has_method("_lire") and Input.is_action_just_pressed("interaction"):
				hit.get_parent()._lire()
		elif hit.is_in_group("deverrouillable"):
			$controler/texture_rect/anim_cursor.play("unlock")
			$controler/texture_rect/interact_label.text = "Deverrouiller/verrouiller"
			if hit.get_parent().get_parent().get_parent().has_method("_unlock") and Input.is_action_just_pressed("interaction"):
				hit.get_parent().get_parent().get_parent()._unlock()
		elif hit.is_in_group("ouvrable"):
			$controler/texture_rect/anim_cursor.play("ouvrir")
			$controler/texture_rect/interact_label.text = "Ouvrir"
			if hit.get_parent().get_parent().get_parent().has_method("_ouvrir") and Input.is_action_just_pressed("interaction"):
				hit.get_parent().get_parent().get_parent()._ouvrir()
		elif hit.is_in_group("ajoutable"):
			$controler/texture_rect/anim_cursor.play("ajouter")
			$controler/texture_rect/interact_label.text = "Ajouter du carburant"
			if hit.has_method("_ajouter") and Input.is_action_just_pressed("interaction"):
				hit._unlock()
		elif hit.is_in_group("fermable"):
			$controler/texture_rect/anim_cursor.play("ouvrir")
			$controler/texture_rect/interact_label.text = "Fermer"
			if hit.get_parent().get_parent().get_parent().has_method("_fermer") and Input.is_action_just_pressed("interaction"):
				hit.get_parent().get_parent().get_parent()._fermer()
		elif hit.is_in_group("fouillable"):
			$controler/texture_rect/anim_cursor.play("fouiller")
			$controler/texture_rect/interact_label.text = "Fouiller " + hit.name
			if hit.get_parent().get_parent().get_parent().has_method("_fouiller") and Input.is_action_just_pressed("interaction"):
				hit.get_parent().get_parent().get_parent()._fouiller()
		elif hit.is_in_group("vide"):
			$controler/texture_rect/anim_cursor.play("idle")
			$controler/texture_rect/interact_label.text = hit.name + " Vide"

	else:
		$controler/texture_rect/anim_cursor.play("idle")
		$controler/texture_rect/interact_label.text = ""
