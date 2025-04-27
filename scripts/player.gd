extends CharacterBody3D

var dead = false
var speed
var walk_speed = 1
var sprint_speed = 2
var jump_velocity = 5.0
var sensitivity = 0.003

#bob head variables
const bob_freq = 5.0
const bob_amp = 0.0125
var t_bob = 0.0

var falling: bool = false
var air_time: float = 0
var fall_damage: float = 0

var gravity = 8.8

@onready var head = %player_head
@onready var camera = %player_camera

@onready var raycast = $head_original_position/player_head/player_camera/player_raycast
const crouch_translate = 0.325
const crouch_jump_add = crouch_translate * 0.74
var is_crouched := false

func _ready():
	get_tree().call_group("monstres", "set_player", self)
	$"../audio_ambient".play()
	if InventoryManager.inventoring == false:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	elif InventoryManager.inventoring == true:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _unhandled_input(event):
	if Input.mouse_mode != Input.MOUSE_MODE_CAPTURED: return
	if event is InputEventMouseMotion:
		head.rotate_y(-event.relative.x * sensitivity)
		camera.rotate_x(-event.relative.y * sensitivity)
		camera.rotation.x = clamp(camera.rotation.x, deg_to_rad(-80), deg_to_rad(80))

func _input(_event):
	#quit game when dead
	if dead == true and Input.is_anything_pressed():
		get_tree().quit()

	#Handle crouch
@onready var _original_capsule_height = $player_collisioner.shape.height
func _handle_crouch(delta) -> void:
	var was_crouched_last_frame = is_crouched
	if Input.is_action_pressed("ramper"):
		is_crouched = true
		$"../anim_step".play("idle")
	elif is_crouched and not self.test_move(self.transform, Vector3(0, crouch_translate, 0)):
		is_crouched = false

	var translate_y_if_possible := 0.0
	if was_crouched_last_frame != is_crouched and not is_on_floor():
		translate_y_if_possible = crouch_jump_add if is_crouched else -crouch_jump_add
	if translate_y_if_possible != 0.0:
		var result = KinematicCollision3D.new()
		self.test_move(self.transform, Vector3(0, translate_y_if_possible, 0), result)
		self.position.y += result.get_travel().y
		head.position.y -= result.get_travel().y
		head.position.y = clamp(head.position.y, -crouch_translate, 0)

	head.position.y = move_toward(head.position.y, -crouch_translate if is_crouched else 0.0, 2.5 * delta)
	$player_collisioner.shape.height = _original_capsule_height - crouch_translate if is_crouched else _original_capsule_height
	$player_collisioner.position.y = $player_collisioner.shape.height / 1.85

func _physics_process(_delta):
	if Input.mouse_mode != Input.MOUSE_MODE_CAPTURED: return
	var input_dir = Input.get_vector("gauche", "droite", "avant", "arriere").normalized()

	if Manager.inwater == false:
		if Input.is_action_pressed("jump"):
			$"../anim_step".play("idle")
		if Input.is_action_pressed("avant") or Input.is_action_pressed("arriere") and is_on_floor():
			if Input.is_action_pressed("sprint"):
				$"../anim_step".play("running")
			elif not Input.is_action_pressed("sprint"):
				$"../anim_step".play("walk")
			elif Input.is_action_just_released("sprint"):
				$"../anim_step".play("walk")
		elif not Input.is_action_pressed("avant") or not Input.is_action_pressed("arriere") and not is_on_floor():
			$"../anim_step".play("idle")
		elif not is_on_floor():
			$"../anim_step".play("idle")

	#fall gestion
	if Manager.laddering == true:
		falling = false
	if Manager.inwater == true:
		falling = false
	if is_on_floor():
		falling = false
		if air_time > 5.00:
			fall_damage = air_time * (1.5 * air_time)
			Manager.Vie_Joueur -= fall_damage
			blessure()
			air_time = 0
			$"../fall_label".text = ""
		air_time = 0
		$"../fall_label".text = ""

	if Manager.laddering == false:
		if Manager.inwater == false:
			if not is_on_floor():
				falling = true
				if falling == true:
					air_time += _delta * 5
					$"../fall_label".text = str(air_time)
					if velocity.y > 0:
						velocity.y -= gravity * _delta
					else:
						velocity.y -= gravity * _delta * fall_damage

	# Add the gravity.
	if not is_on_floor() and Manager.laddering == false:
		self.velocity.y -= gravity * _delta
		$"../anim_step".play("idle")

	# Handle Jump.
	if Manager.inwater == false:
		if Input.is_action_just_pressed("jump") and is_on_floor():
			self.velocity.y = jump_velocity
	if Manager.inwater == true:
		if Input.is_action_just_pressed("jump"):
			self.velocity.y = jump_velocity

	# Handle sprint
	if Input.is_action_pressed("sprint"):
		speed = sprint_speed
	else:
		speed = walk_speed

	var direction = (head.transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = 0.0
		velocity.z = 0.0

# Head bob
	t_bob += _delta * velocity.length() * float(is_on_floor())
	camera.transform.origin = _headbob(t_bob)

#laddering
	if Manager.laddering == true:
		gravity = 0
	if !Input.is_action_pressed("avant") and !Input.is_action_pressed("descendre") and Manager.laddering == true:
		velocity.y = 0
	elif Input.is_action_pressed("avant") and Manager.laddering == true:
		velocity.y = 0.5
	elif Input.is_action_pressed("descendre") and Manager.laddering == true:
		velocity.y = -0.5
	if Manager.laddering == false:
		gravity = 9.8

	_handle_crouch(_delta)

	move_and_slide()

func _headbob(time) -> Vector3:
	var pos = Vector3.ZERO
	pos.y = sin(time * bob_freq) * bob_amp
	pos.x = cos(time * bob_freq / 2) * bob_amp * 2
	return pos

func _process(_delta) -> void:
	if Manager.dead == true:
		$"../canvas_hud/control_fight".visible = false
		$"../canvas_hud/control_fight/texture_hud".hide()
		$"../sprite_game_over".show()
		dead = true

#nage
	if Manager.inwater == true:
		$"../anim_swim".play("swim")
		$"../anim_swim/sprite_in_water".show()
		$"../anim_swim/sprite_in_water".self_modulate.a = 0.3
		$head_original_position/player_head/lanterne.light_energy = 0.01
		gravity = 1
		jump_velocity = 0.5
		walk_speed = 0.5
		sprint_speed = 0.7
		sensitivity = 0.0015
		$"../audio_ambient".stream_paused = true
	if Manager.inwater == false and Manager. ingas == false:
		$"../anim_swim".stop()
		$"../anim_swim/sprite_in_water".hide()
		$head_original_position/player_head/lanterne.light_energy = 3
		$"../anim_swim/audio-bubble".stop()
		$"../anim_swim/audio-underwater".stop()
		Manager.oxy = Manager.maxoxy
		gravity = 8.8
		jump_velocity = 5.0
		walk_speed = 1
		sprint_speed = 2
		sensitivity = 0.003
		$"../audio_ambient".stream_paused = false

#Asphyxie
	if Manager.ingas == true:
		$"../anim_in_gas".play("in_gas")
		$"../anim_in_gas/sprite_in_gas".self_modulate.a = 0.95
	elif Manager.ingas == false and Manager.inwater == false:
		$"../anim_in_gas".play("not_in_gas")
		Manager.oxy = Manager.maxoxy

#HUD visibility
	if Manager.HUD_visibility == false:
		$"../canvas_hud".hide()
		$"../attributs_label".hide()
		$"../controls_label".hide()
	elif Manager.HUD_visibility == true:
		$"../canvas_hud".show()

	#équiper arme ramassée
	if Manager.arme_en_main == 1:
		Manager.weapon_type = 0
		$"../canvas_hud/control_fight/sprite_fist".hide()
		$"../canvas_hud/control_fight/texture_hud/sprite_fist_hud".hide()
		$"../canvas_hud/control_fight/sprite_knife".show()
		$"../canvas_hud/control_fight/texture_hud/sprite_knife_hud".show()
		$"../canvas_hud/control_fight/sprite_sword".hide()
		$"../canvas_hud/control_fight/texture_hud/sprite_sword_hud".hide()
		$"../canvas_hud/control_fight/sprite_stick".hide()
		$"../canvas_hud/control_fight/texture_hud/sprite_stick_hud".hide()
		$head_original_position/player_head/player_camera/player_raycast.target_position.y = -1
	if Manager.arme_en_main == 2:
		Manager.weapon_type = 0
		$"../canvas_hud/control_fight/sprite_fist".hide()
		$"../canvas_hud/control_fight/texture_hud/sprite_fist_hud".hide()
		$"../canvas_hud/control_fight/sprite_knife".hide()
		$"../canvas_hud/control_fight/texture_hud/sprite_knife_hud".hide()
		$"../canvas_hud/control_fight/sprite_sword".show()
		$"../canvas_hud/control_fight/texture_hud/sprite_sword_hud".show()
		$"../canvas_hud/control_fight/sprite_stick".hide()
		$"../canvas_hud/control_fight/texture_hud/sprite_stick_hud".hide()
		$head_original_position/player_head/player_camera/player_raycast.target_position.y = -1.5
	if Manager.arme_en_main == 3:
		Manager.weapon_type = 0
		Manager.shield = 1
		$"../canvas_hud/control_fight/sprite_rondache".hide()
		$"../canvas_hud/control_fight/texture_hud/sprite_rondache_hud".hide()
		$"../canvas_hud/control_fight/sprite_fist".hide()
		$"../canvas_hud/control_fight/texture_hud/sprite_fist_hud".hide()
		$"../canvas_hud/control_fight/sprite_knife".show()
		$"../canvas_hud/control_fight/texture_hud/sprite_knife_hud".hide()
		$"../canvas_hud/control_fight/sprite_sword".hide()
		$"../canvas_hud/control_fight/texture_hud/sprite_sword_hud".hide()
		$"../canvas_hud/control_fight/sprite_stick".show()
		$"../canvas_hud/control_fight/texture_hud/sprite_stick_hud".show()
		$head_original_position/player_head/player_camera/player_raycast.target_position.y = -2
	if Manager.shield_en_main == 3:
		$"../canvas_hud/control_fight/texture_hud/sprite_rondache_hud".show()
		$"../canvas_hud/control_fight/sprite_rondache".show()

#changer d'arme en main
	if Input.is_action_pressed("poing") and Manager.fist == true:
		Manager.arme_en_main = 0
		Manager.weapon_type = 0
		$head_original_position/player_head/player_camera/player_raycast.target_position.y = -0.5
		$"../canvas_hud/control_fight/sprite_fist".show()
		$"../canvas_hud/control_fight/texture_hud/sprite_fist_hud".show()
		if Manager.knife == true:
			$"../canvas_hud/control_fight/sprite_knife".hide()
			$"../canvas_hud/control_fight/texture_hud/sprite_knife_hud".hide()
		if Manager.sword == true:
			$"../canvas_hud/control_fight/sprite_sword".hide()
			$"../canvas_hud/control_fight/texture_hud/sprite_sword_hud".hide()
		if Manager.stick == true:
			$"../canvas_hud/control_fight/sprite_stick".hide()
			$"../canvas_hud/control_fight/texture_hud/sprite_stick_hud".hide()
	if Input.is_action_pressed("knife") and Manager.knife == true:
		Manager.arme_en_main = 1
		Manager.weapon_type = 0
		$head_original_position/player_head/player_camera/player_raycast.target_position.y = -1
		$"../canvas_hud/control_fight/sprite_knife".show()
		$"../canvas_hud/control_fight/texture_hud/sprite_knife_hud".show()
		$"../canvas_hud/control_fight/sprite_fist".hide()
		$"../canvas_hud/control_fight/texture_hud/sprite_fist_hud".hide()
		if Manager.sword == true:
			$"../canvas_hud/control_fight/texture_hud/sprite_sword_hud".hide()
			$"../canvas_hud/control_fight/sprite_sword".hide()
		if Manager.stick == true:
			$"../canvas_hud/control_fight/sprite_stick".hide()
			$"../canvas_hud/control_fight/texture_hud/sprite_stick_hud".hide()
	if Input.is_action_pressed("sword") and Manager.sword == true:
		Manager.arme_en_main = 2
		Manager.weapon_type = 0
		$head_original_position/player_head/player_camera/player_raycast.target_position.y = -1.5
		$"../canvas_hud/control_fight/sprite_sword".show()
		$"../canvas_hud/control_fight/texture_hud/sprite_sword_hud".show()
		$"../canvas_hud/control_fight/sprite_fist".hide()
		$"../canvas_hud/control_fight/texture_hud/sprite_fist_hud".hide()
		if Manager.knife == true:
			$"../canvas_hud/control_fight/sprite_knife".hide()
			$"../canvas_hud/control_fight/texture_hud/sprite_knife_hud".hide()
		if Manager.stick == true:
			$"../canvas_hud/control_fight/sprite_stick".hide()
			$"../canvas_hud/control_fight/texture_hud/sprite_stick_hud".hide()
	if Input.is_action_pressed("stick") and Manager.stick == true:
		Manager.arme_en_main = 3
		Manager.weapon_type = 0
		$head_original_position/player_head/player_camera/player_raycast.target_position.y = -2
		if Manager.stick == true:
			Manager.shield = 1
			$"../canvas_hud/control_fight/sprite_fist".hide()
			$"../canvas_hud/control_fight/texture_hud/sprite_fist_hud".hide()
			$"../canvas_hud/control_fight/sprite_stick".show()
			$"../canvas_hud/control_fight/texture_hud/sprite_stick_hud".show()
		if Manager.sword == true:
			$"../canvas_hud/control_fight/sprite_sword".hide()
			$"../canvas_hud/control_fight/texture_hud/sprite_sword_hud".hide()
		if Manager.knife == true:
			$"../canvas_hud/control_fight/sprite_knife".hide()
			$"../canvas_hud/control_fight/texture_hud/sprite_knife_hud".hide()

#control shield
	if Input.is_action_pressed("equip_shield") and Manager.shield_en_main == 2 and !Manager.arme_en_main == 2:
		$"../canvas_hud/control_fight/sprite_rondache".show()
		$"../canvas_hud/control_fight/texture_hud/sprite_rondache_hud".show()
	if Input.is_action_pressed("equip_shield") and Manager.shield_en_main == 2 and !Manager.arme_en_main == 1:
		$"../canvas_hud/control_fight/sprite_rondache".show()
		$"../canvas_hud/control_fight/texture_hud/sprite_rondache_hud".show()
	if Input.is_action_pressed("equip_shield") and Manager.shield_en_main == 2 and !Manager.arme_en_main == 0:
		$"../canvas_hud/control_fight/sprite_rondache".show()
		$"../canvas_hud/control_fight/texture_hud/sprite_rondache_hud".show()

	if Manager.shield_en_main == 2 and Manager.rondache == true:
		$"../canvas_hud/control_fight/sprite_rondache".show()
		$"../canvas_hud/control_fight/texture_hud/sprite_rondache_hud".show()

#Attaques
#attaque fist
	if Input.mouse_mode != Input.MOUSE_MODE_CAPTURED: return
	if Input.is_action_just_pressed("attaque") and Manager.Attack_Cooldown == false:
		if !Input.is_action_pressed("block"):
			if Manager.arme_en_main == 0:
				$"../canvas_hud/cooldown_timer".start()
				$"../canvas_hud/anim_attack".play("attack_fist")
				var coll = raycast.get_collider()
				if raycast.is_colliding() and coll.has_method("kill"):
					coll.kill()
					Manager.Attack_Cooldown = true
#attaque knife
			if Manager.arme_en_main == 1:
				$"../canvas_hud/cooldown_timer".start()
				$"../canvas_hud/anim_attack".play("attack_knife")
				var coll = raycast.get_collider()
				if raycast.is_colliding() and coll.has_method("kill"):
					coll.kill()
					Manager.Attack_Cooldown = true
#attaque sword
			if Manager.arme_en_main == 2:
				$"../canvas_hud/cooldown_timer".start()
				$"../canvas_hud/anim_attack".play("attack_sword")
				var coll = raycast.get_collider()
				if raycast.is_colliding() and coll.has_method("kill"):
					coll.kill()
					Manager.Attack_Cooldown = true
#attaque stick
			if Manager.arme_en_main == 3:
				$"../canvas_hud/cooldown_timer".start()
				$"../canvas_hud/anim_attack".play("attack_stick")
				var coll = raycast.get_collider()
				if raycast.is_colliding() and coll.has_method("kill"):
					coll.kill()
					Manager.Attack_Cooldown = true

func _on_cooldown_timer_timeout() -> void:
	Manager.Attack_Cooldown = false

func blessure():
	$"../anim_blessure".play("blessure")
	if Manager.Vie_Joueur < 0.01:
		$"../canvas_hud/control_fight".visible = false
		$"../canvas_hud/control_fight/texture_hud".hide()
		$"../sprite_game_over".show()
		dead = true

func kill():
	pass

func _on_timer_soif_timeout() -> void:
	Manager.soif -= 3.0

func _on_anim_swim_animation_finished(_anim_name: StringName) -> void:
	if Manager.inwater == true:
		Manager.oxy -= Manager.maxoxy * 0.1
		$"../anim_swim".play("swim")

func _on_timer_faim_timeout() -> void:
	Manager.faim -= Manager.maxfaim * 0.01

func _on_timer_soif_2_timeout() -> void:
	Manager.soif -= Manager.maxsoif * 0.01

func _on_anim_in_gas_animation_finished(_anim_name: StringName) -> void:
	if Manager.ingas == true:
		Manager.oxy -= Manager.maxoxy * 0.02
		$"../anim_in_gas".play("in_gas")
	if Manager.ingas == false and Manager.inwater == false:
		$"../anim_in_gas".play("not_in_gas")
		Manager.oxy = Manager.maxoxy
