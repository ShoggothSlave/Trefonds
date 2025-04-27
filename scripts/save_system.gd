extends Button

func _save():
	var save_dict = {
		
		"position" : Vector3(0.445, 0.377, -31.383),
		"Vie_Joueur" : 50,
		"lvl" : 1,
		"xp" : 0,
		"maxxp" : 50,
		"maxlife" : 50,
		"HUD_visibility" : true,
		"soif" : 100,
		"faim" : 100,
		"knife" : false,
		"sword" : false,
		"stick" : false,
		"rondache" : false,
		"arme_en_main" : 0,
		"shield_en_main" : 0,
		"armure" : 0.0,
		"force" : 0.0,
		"rustykey" : false,
		"bronzekey" : false,
		"silverkey" : false,
		"buche" : 0,
		"moss" : 0,
		"flint" : 0,
		"RKdoor" : false,
		"BKdoor" : false,
		"SKdoor" : false,
		"veggies" : 0,
		"raw_meat" : 0,
		"fried_meat" : 0,
		"gourde" : 0
		
	}
	return save_dict

func _ready():
	var buttonS = $"."
	buttonS.pressed.connect(self._buttonS_pressed)

func _buttonS_pressed():
	_save_game()

func _save_game():
	var save_game = FileAccess.open("user://savegame.save", FileAccess.WRITE)
	
	var json_string = JSON.stringify(_save())
	
	save_game.store_line(json_string)
