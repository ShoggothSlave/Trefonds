extends Node

var inventoring = false

var mortier = false
var chaudron = false
var assiette = false
var bol = false
var planche = false
var jarre = false
var bouteille = false

var raw_meat = 0
var raw_meat_max = 15
var fried_meat = 0
var fried_meat_max = 20
var gourde = 0
var gourde_max = 6
var bandage = 0
var bandage_max = 8
var mirtilles = 0
var mirtilles_max = 20
var belladone = 0
var belladone_max = 10
var champ1 = 0
var champ1_max = 6
var champ2 = 0
var champ2_max = 8
var champv1 = 0
var champv1_max = 4
var champv2 = 0
var champv2_max = 4
var buche = 0
var buche_max = 6
var flint = 0
var flint_max = 2
var mousse = 0
var mousse_max = 3
var plantmed = 0
var plantmed_max = 8
var oignon = 0
var oignon_max = 2

#craft
var c_mirtilles = 0
var c_belladone = 0
var c_champ1 = 0
var c_champ2 = 0
var c_champv1 = 0
var c_champv2 = 0
var c_plantmed = 0

#potion
var po_demi_min = 0
var po_min = 0
var po_demi_con = 0
var po_con = 0
var po_demi_sup = 0
var po_sup = 0
var po_vie = 0
var po_armor = 0
var po_for = 0
var po_demi_min_max = 99
var po_min_max = 99
var po_demi_con_max = 99
var po_con_max = 99
var po_demi_sup_max = 99
var po_sup_max = 99
var po_vie_max = 99
var po_armor_max = 99
var po_for_max = 99

#rings
var ring_vie_brz = false
var ring_vie_slv = false
var ring_vie_gld = false
var ring_arm_brz = false
var ring_arm_slv = false
var ring_arm_gld = false
var ring_for_brz = false
var ring_for_slv = false
var ring_for_gld = false
var ring_oxy_brz = false
var ring_oxy_slv = false
var ring_oxy_gld = false
var ring_spd_brz = false
var ring_spd_slv = false
var ring_spd_gld = false

#amulets
var am_vie_brz = false
var am_vie_slv = false
var am_vie_gld = false
var am_arm_brz = false
var am_arm_slv = false
var am_arm_gld = false
var am_for_brz = false
var am_for_slv = false
var am_for_gld = false
var am_oxy_brz = false
var am_oxy_slv = false
var am_oxy_gld = false
var am_spd_brz = false
var am_spd_slv = false
var am_spd_gld = false

func _process(_delta: float) -> void:
# negative number limit
	if raw_meat < 0:
		raw_meat = 0
	if fried_meat < 0:
		fried_meat = 0
	if gourde < 0:
		gourde = 0
	if bandage < 0:
		bandage = 0
	if mirtilles < 0:
		mirtilles = 0
	if belladone < 0:
		belladone = 0
	if champ1 < 0:
		champ1 = 0
	if champ2 < 0:
		champ2 = 0
	if champv1 < 0:
		champv1 = 0
	if champv2 < 0:
		champv2 = 0
	if buche < 0:
		buche = 0
	if flint < 0:
		flint = 0
	if mousse < 0:
		mousse = 0
	if plantmed < 0:
		plantmed = 0
	if oignon < 0:
		oignon = 0
	if po_demi_min < 0:
		po_demi_min = 0
	if po_min < 0:
		po_min = 0
	if po_demi_con < 0:
		po_demi_con = 0
	if po_con < 0:
		po_con = 0
	if po_demi_sup < 0:
		po_demi_sup = 0
	if po_sup < 0:
		po_sup = 0
	if po_vie < 0:
		po_vie = 0
	if po_armor < 0:
		po_armor = 0
	if po_for < 0:
		po_for = 0
