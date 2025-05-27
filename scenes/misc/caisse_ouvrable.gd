extends Node3D

@onready var inspect = $inspect_timer
@onready var pb = $inspect_progress

var crate_items : Array = [
	{"name": "Belladone", "path": "res://scenes/item/buisson_a_baies_noires.tscn", "image_node_path": "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_baies_noires", "var_key": "belladone", "max_key": "belladone_max"},
	{"name": "Bandage", "path": "res://scenes/item/bandage.tscn", "image_node_path": "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_bandage", "var_key": "bandage", "max_key": "bandage_max"},
	{"name": "Coprinus", "path": "res://scenes/item/champi_2.tscn", "image_node_path": "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_champi_2", "var_key": "champ2", "max_key": "champ2_max"},
	{"name": "Agaric", "path": "res://scenes/item/champi_v_1.tscn", "image_node_path": "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_champi_v_i", "var_key": "champv1", "max_key": "champv1_max"},
	{"name": "Amanite Phalloïde", "path": "res://scenes/item/champi_v_2.tscn", "image_node_path": "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_champi_v_ii", "var_key": "champv2", "max_key": "champv2_max"},
	{"name": "Cuissot Cuit", "path": "res://scenes/item/cuissot_cuit.tscn", "image_node_path": "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_friedmeat", "var_key": "fried_meat", "max_key": "fried_meat_max"},
	{"name": "Demi Potion Mineure", "path": "res://scenes/item/demi_potion_mineure.tscn", "image_node_path": "attributs_label/po_demi_min", "var_key": "po_demi_min", "max_key": "po_demi_min_max"},
	{"name": "Demi Potion Conséquente", "path": "res://scenes/item/demi_potion_consequente.tscn", "image_node_path": "attributs_label/po_demi_con", "var_key": "po_demi_con", "max_key": "po_demi_con_max"},
	{"name": "Demi Super_Potion", "path": "res://scenes/item/demi_super_potion.tscn", "image_node_path": "attributs_label/po_demi_sup", "var_key": "po_demi_sup", "max_key": "po_demi_sup_max"},
	{"name": "Gourde", "path": "res://scenes/item/gourde.tscn", "image_node_path": "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_gourde", "var_key": "gourde", "max_key": "gourde_max"},
	{"name": "Myrtille", "path": "res://scenes/item/buisson_a_mirtilles.tscn", "image_node_path": "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_myrtilles", "var_key": "mirtilles", "max_key": "mirtilles_max"},
	{"name": "Oignon", "path": "res://scenes/item/oignon.tscn", "image_node_path": "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_oignon", "var_key": "oignon", "max_key": "oignon_max"},
	{"name": "Araceae", "path": "res://scenes/item/plante_med.tscn", "image_node_path": "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_plante_med", "var_key": "plantmed", "max_key": "plantmed_max"},
	{"name": "Potion Mineure", "path": "res://scenes/item/potion_mineure.tscn", "image_node_path": "attributs_label/po_min", "var_key": "po_min", "max_key": "po_min_max"},
	{"name": "Potion Conséquente", "path": "res://scenes/item/potion_consequente.tscn", "image_node_path": "attributs_label/po_con", "var_key": "po_con", "max_key": "po_con_max"},
	{"name": "Super_Potion", "path": "res://scenes/item/super_potion.tscn", "image_node_path": "attributs_label/po_sup", "var_key": "po_sup", "max_key": "po_sup_max"}
]

var current_items : Array = []
var current_item_const : int = 0
var collecting_more = false
var notification_opened = false
var key_I_pressed_count = 0


func _ouvrir():
	self.remove_from_group("ouvrable")
	$Caisse/Caisse.remove_from_group("ouvrable")
	$Caisse/Caisse/Caisse.remove_from_group("ouvrable")
	$anim_caisse.play("ouverture")
	$Timer.start()

func _on_timer_timeout() -> void:
	self.add_to_group("fouillable")
	$Caisse/Caisse.add_to_group("fouillable")
	$Caisse/Caisse/Caisse.add_to_group("fouillable")

func _fouiller():
	self.remove_from_group("fouillable")
	$Caisse/Caisse.remove_from_group("fouillable")
	$Caisse/Caisse/Caisse.remove_from_group("fouillable")
	inspect.start()
	pb.show()

func _on_inspect_timer_timeout() -> void:
	$inspect_progress.hide()
	self.add_to_group("vide")
	$Caisse/Caisse.add_to_group("vide")
	$Caisse/Caisse/Caisse.add_to_group("vide")

	collect_first_item()

func fill_crate():
	var num_items = randi_range(1, 3)
	var available_items = crate_items.duplicate()

	for i in range(num_items):
		var item_data
		var found = false
		while not available_items.is_empty() and not found:
			item_data = available_items.pick_random()
			available_items.erase(item_data)

			var var_name = item_data.get("var_key", null)
			var max_name = item_data.get("max_key", null)

			# i left this true so i can see when errors happen
			if true or var_name and max_name and (var_name in InventoryManager) and (max_name in InventoryManager):
				var current = InventoryManager.get(var_name)
				var max_val = InventoryManager.get(max_name)

				if current >= max_val:
					continue  # Skip item if max reached

			# Passed check
			found = true

		if not found:
			break

		var scene = load(item_data["path"])
		if scene:
			var instance = scene.instantiate()
			item_data.object = instance
			current_items.append(item_data)

	current_item_const = current_items.size()


func send_player_notifiction_image():
	# call a function from the player while passing agurements for image node path
	var players = get_tree().get_nodes_in_group("player")
	var player = players[0]
	player.show_notification_crate_image(current_items[0].image_node_path)

func collect_first_item():
	#Collects the first item from the crate and prepares a continous funtion to collect the rest on key input "E"
	fill_crate() # Very important to have this here instead of _ready

	if current_items.is_empty():
		#print("No items to collect from crate.")
		return

	var item = current_items[0].object

	send_player_notifiction_image()

	prints(current_items)
	if item.has_method("_prendre"):
		_add_prenre_to_SceneTree(item)
		item._prendre()
		delete_picked_item(item)
		current_items.remove_at(0)

	if not current_items.is_empty():
		collecting_more = true

	notification_opened = true

func collect_other_items():
	var i = 0
	var item = current_items[i].object
	if item.has_method("_prendre") and Input.is_action_just_pressed("interaction"):

		send_player_notifiction_image()

		_add_prenre_to_SceneTree(item)
		item._prendre()
		delete_picked_item(item)
		current_items.remove_at(i)
		#prints(current_items,"-", item)

		if current_items.is_empty():
			collecting_more = false

	notification_opened = true

func _process(_delta):
	pb.value = inspect.time_left

	if collecting_more:
		collect_other_items()

	if notification_opened:# or (key_I_pressed_count > 0):
		if Input.is_action_just_pressed("interaction"):

			key_I_pressed_count += 1
			#prints("here", key_I_pressed_count, ":", current_item_const)
			if key_I_pressed_count >= current_item_const:
				var players = get_tree().get_nodes_in_group("player")
				var player = players[0]
				player.hide_notification_crate_image()

				notification_opened = false

 

func _add_prenre_to_SceneTree(_item):
	self.add_child(_item)

func delete_picked_item(_item):
	if not _item.is_in_group("prehensible"):
		# only bushes
		#if ("buisson_a_baies_noires" in _item.name) or ("buisson_a_mirtilles" in _item.name): 
			#_item.queue_free()
			
		_item.queue_free()
