extends Node

var Vie_Joueur = 50.0
var lvl = 1
var xp = 0
var maxxp = 50
var maxlife = 50.0
var Attack_Cooldown = false
var HUD_visibility = true
var dead = false

var oxy = 100.0
const maxoxy = 100.0
var soif = 100.0
const maxsoif = 100.0
var faim = 100.0
const maxfaim = 100.0

var laddering = false
var coolingdown = false

#armes possédées
var fist = true
var knife = false
var sword = false
var stick = false

#shield possédé
var rondache = false

#arme en main 0 = poing, 1 = couteau, 2 = épée 3 = stick
var arme_en_main = 0

#weapon_type: melee = 0, range = 1
var weapon_type = 0

#shield en main 0 = rien, 1 = stick 2 = rondache
var shield_en_main = 0

#armure
var armure = 0.0 

#shielding
var shield = 0.0

#force
var force = 0.0

#keys
var rustykey = false
var bronzekey = false
var silverkey = false

#locked doors
var RKdoor = false
var BKdoor = false
var SKdoor = false
var arene_sortie = false

#Intro
var text = false

#Fin
var fin = false

#sleep
var sleep = false

#soif
var abreuvable = false

#nage
var inwater = false

#asphyxie
var ingas = false

var casquecuir = false
var bottescuir = false
var pantscuir = false
var vestecuir = false

#pieces d'armure (rien = 0, cuir = 1)
var hat = 0
var torso = 0
var pants = 0
var boots = 0

#ceinture (0 = rien, 1 = simple, 2 = double, 3 = large)
var ceinture = 0
#ceinture possédées
var ceinture_simple = false
var ceinture_double = false
var ceinture_large = false

#equiped_potion (0 = rien, 1 = demi po min, 2 = po min, 3 = demi po con, 4 = po con, 5 = demi sup po, 6 = sup po)
var slot_po_1 = 0
var slot_po_2 = 0
var slot_po_3 = 0

#equip amulet (0 = rien, 10 = arm_brz, 11 = amr_slv, 12 arm_ gld
# 1 = for_brz, 2 = for_slv, 3 = for_gld,
# 13 = life_brz, 14 = life_slv, 15 = life_gld,
# 4 = oxy_brz, 5 = oxy_slv, 6 = oxy_gld,
# 7 = spd_brz, 8 = spd_slv, 9 = spd_gld)
var equip_amulet = 0
var amu0 = true
var amu1 = false
var amu2 = false
var amu3 = false
var amu4 = false
var amu5 = false
var amu6 = false
var amu7 = false
var amu8 = false
var amu9 = false
var amu10 = false
var amu11 = false
var amu12 = false
var amu13 = false
var amu14 = false
var amu15 = false

#equip ring (0 = rien, 7 = arm_brz, 8 = amr_slv, 9 arm_ gld
# 10 = for_brz, 11 = for_slv, 12 = for_gld,
# 13 = life_brz, 14 = life_slv, 15 = life_gld,
# 1 = oxy_brz, 2 = oxy_slv, 3 = oxy_gld,
# 4 = spd_brz, 5 = spd_slv, 6 = spd_gld)
var equip_ring_1 = 0
var equip_ring_2 = 0

var iring0 = true
var iring1 = false
var iring2 = false
var iring3 = false
var iring4 = false
var iring5 = false
var iring6 = false
var iring7 = false
var iring8 = false
var iring9 = false
var iring10 = false
var iring11 = false
var iring12 = false
var iring13 = false
var iring14 = false
var iring15 = false

var iiring0 = true
var iiring1 = false
var iiring2 = false
var iiring3 = false
var iiring4 = false
var iiring5 = false
var iiring6 = false
var iiring7 = false
var iiring8 = false
var iiring9 = false
var iiring10 = false
var iiring11 = false
var iiring12 = false
var iiring13 = false
var iiring14 = false
var iiring15 = false

func _process(_delta):
	if Vie_Joueur >= maxlife:
		Vie_Joueur = maxlife
	if soif >= maxsoif:
		soif = maxsoif
	if faim >= maxfaim:
		faim = maxfaim
	if oxy >= maxoxy:
		oxy = maxoxy

#level up
	if xp >= maxxp:
		xp = 0
		lvl = lvl +1
		maxlife = maxlife +5
		maxxp = maxxp + maxxp / 4.0
		force += 0.01
		armure += 0.01
