extends Node

#quête bestiaire
var quest_rat = false
var quest_bat = false
var quest_ph = false

var rat = 0
var bat = 0
var ph = 0

var ratmax = 10
var batmax = 10
var phmax = 10

# quête items
var quest_myrtilles = false
var quest_belladone = false
var quest_bolet = false
var quest_coprinus = false
var quest_araceae = false
var quest_bandage = false

var myrtilles = 0
var belladone = 0
var bolet = 0
var coprinus = 0
var araceae = 0
var bandage = 0

var myrtillesmax = 10
var belladonemax = 10
var boletmax = 4
var coprinusmax = 4
var araceaemax = 5
var bandagemax = 5

func _process(_delta: float) -> void:
	if rat >= 10:
		rat = 0
		Manager.xp += 100
		quest_rat = false
	if bat >= 10:
		bat = 0
		Manager.xp += 150
		quest_bat = false
	if ph >= 10:
		ph = 0
		Manager.xp += 200
		quest_ph = false
	if myrtilles >= 10:
		myrtilles = 0
		Manager.xp += 100
		quest_myrtilles = false
	if belladone >= 10:
		belladone = 0
		Manager.xp += 100
		quest_belladone = false
	if bolet >= 4:
		bolet = 0
		Manager.xp += 100
		quest_bolet = false
	if coprinus >= 4:
		coprinus = 0
		Manager.xp += 100
		quest_coprinus = false
	if araceae >= 5:
		araceae = 0
		Manager.xp += 150
		quest_araceae = false
	if bandage >= 5:
		bandage = 0
		Manager.xp += 200
		quest_bandage = false
