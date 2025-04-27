extends Button

func _ready():
	var buttonL = $"."
	buttonL.pressed.connect(self._buttonL_pressed)

func _buttonL_pressed():
	_load_game()

func _load_game():
	if not FileAccess.file_exists("user://savegame.save"):
		return
	
	var save_game = FileAccess.open("user://savegame.save", FileAccess.READ)
	
	while save_game.get_position() < save_game.get_length():
		var json_string = save_game.get_line()
		var json = JSON.new()
		var _parse_result = json.parse(json_string)
		var _node_data = json.get_data()
