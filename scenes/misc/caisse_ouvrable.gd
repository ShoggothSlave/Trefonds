extends Node3D

@onready var inspect = $inspect_timer
@onready var pb = $inspect_progress

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

func _process(_delta):
	pb.value = inspect.time_left
