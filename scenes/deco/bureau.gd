extends Node3D

@onready var inspect = $inspect_timer
@onready var pb = $inspect_progress

var crate_items : Array = [ 
	{"name": "Belladone", "path": "res://scenes/item/buisson_a_baies_noires.tscn", "image_node_path" : "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_baies_noires"},
	{"name": "Bandage", "path": "res://scenes/item/bandage.tscn", "image_node_path" : "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_bandage"},
	{"name": "Coprinus", "path": "res://scenes/item/champi_2.tscn", "image_node_path" : "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_champi_2"},
	{"name": "Agaric", "path": "res://scenes/item/champi_v_1.tscn", "image_node_path" : "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_champi_v_i"},
	{"name": "Amanite Phalloïde", "path": "res://scenes/item/champi_v_2.tscn", "image_node_path" : "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_champi_v_ii"},
	{"name": "Cuissot Cuit", "path": "res://scenes/item/cuissot_cuit.tscn", "image_node_path" : "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_friedmeat"},
	{"name": "Demi Potion Mineure", "path": "res://scenes/item/demi_potion_mineure.tscn", "image_node_path" : "attributs_label/po_demi_min"},
	{"name": "Demi Potion Conséquente", "path": "res://scenes/item/demi_potion_consequente.tscn", "image_node_path" : "attributs_label/po_demi_con"},
	{"name": "Demi Super_potion", "path": "res://scenes/item/demi_super_potion.tscn", "image_node_path" : "attributs_label/po_demi_sup"},
	{"name": "Gourde", "path": "res://scenes/item/gourde.tscn", "image_node_path" : "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_gourde"},
	{"name": "Myrtille", "path": "res://scenes/item/buisson_a_mirtilles.tscn", "image_node_path" : "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_myrtilles"},
	{"name": "Oignon", "path": "res://scenes/item/oignon.tscn", "image_node_path" : "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_oignon"},
	{"name": "Araceae", "path": "res://scenes/item/plante_med.tscn", "image_node_path" : "inventaire_visuel/Control/canva_inventaire/texture_inventaire/sprite_plante_med"},
	{"name": "Potion Mineure", "path": "res://scenes/item/potion_mineure.tscn", "image_node_path" : "attributs_label/po_min"},
	{"name": "Potion Conséquente", "path": "res://scenes/item/potion_consequente.tscn", "image_node_path" : "attributs_label/po_con"},
	{"name": "Super_Potion", "path": "res://scenes/item/super_potion.tscn", "image_node_path" : "attributs_label/po_sup"},
	]

var current_items : Array = []
var current_item_const : int = 0
var collecting_more = false
var notification_opened = false
var key_I_pressed_count = 0

func _ready() -> void:
	fill_crate() 

func _fouiller():
	self.remove_from_group("fouillable")
	$Bureau/Bureau.remove_from_group("fouillable")
	$Bureau/Bureau/Bureau.remove_from_group("fouillable")
	inspect.start()
	pb.show()
	inspect.wait_time = pb.value 

func _on_inspect_timer_timeout() -> void:
	$inspect_progress.hide()
	self.add_to_group("vide")
	$Bureau/Bureau.add_to_group("vide")
	$Bureau/Bureau/Bureau.add_to_group("vide")

	collect_first_item()

func fill_crate():
	# Pick 1 to 3 random items (no duplicates)
	var num_items = randi_range(1, 3)

	# Make a copy of the available items so we can remove picked ones
	var available_items = crate_items.duplicate()

	for i in range(num_items):
		if available_items.is_empty():
			break  # No more items to pick

		var item_data = available_items.pick_random()
		available_items.erase(item_data)  # Remove picked item to avoid duplicates

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
	var item = current_items[0].object

	send_player_notifiction_image()

	prints(current_items)
	if item.has_method("_prendre"):
		item._prendre()
		current_items.remove_at(0)

	if not current_items.is_empty():
		collecting_more = true

	notification_opened = true

func collect_other_items():
	var i = 0
	var item = current_items[i].object
	if item.has_method("_prendre") and Input.is_action_just_pressed("interaction"):

		send_player_notifiction_image()

		item._prendre()
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

 
