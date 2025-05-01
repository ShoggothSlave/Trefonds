extends Node3D

@onready var inspect = $inspect_timer
@onready var pb = $inspect_progress

var crate_items : Array = [
	{
	"name" : "Coprinus", "path" : "res://scenes/item/champi_2.tscn", "image_node_path" : "Control/canva_inventaire/texture_inventaire/sprite_champi_2"},
	{"name" : "Bolet Blafard", "path" : "res://scenes/item/champi_1.tscn", "image_node_path" : "Control/canva_inventaire/texture_inventaire/sprite_champi_i"},
	{"name" : "cuissot_cuit", "path" : "res://scenes/item/cuissot_cuit.tscn", "image_node_path" : "Control/canva_inventaire/texture_inventaire/sprite_friedmeat"},
	{"name" : "cuissot", "path" : "res://scenes/item/cuissot.tscn", "image_node_path" : "Control/canva_inventaire/texture_inventaire/sprite_rawmeat"}
]
var current_items : Array = []
var current_item_const : int = 0
var collecting_more = false
var notification_opened = false
var key_I_pressed_count = 0


func _ready() -> void:
	fill_crate() 

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
	inspect.wait_time = pb.value 

func _on_inspect_timer_timeout() -> void:
	$inspect_progress.hide()
	self.add_to_group("vide")
	$Caisse/Caisse.add_to_group("vide")
	$Caisse/Caisse/Caisse.add_to_group("vide")

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

	#prints(current_items)
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
